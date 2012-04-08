/**
 * @author Dmitry Karpenkov
 * @version 0.0.1.2
 * @class Select
 * @constructor
 * @param  {String} elementID The source HTMLSelect ID
 * @param  {Array} options The source HTMLSelect ID
 */
function Select(elementID, options) {
	var self = this;
	
    // source <select /> element
	this.select = document.getElementById(elementID);
	// hide the select field
    this.select.style.display = 'none'; 
	if (!this.select || this.select.tagName.toLowerCase() != 'select')
		return;
	this.options = this.select.options;

	// initialize options
	this._initializeOptions(options);
	
	// create and build div structure
	this.selectArea = document.createElement('div');
	var leftDiv = document.createElement('div');
	var rightDiv = document.createElement('div');
	this.textContainer = document.createElement('div');
	this.textContainer.id = this.select.id + 'Text';
	var text = document.createTextNode(this.emptyText);
	this.selectArea.id = this.select.id + 'SelectArea';
	this.selectArea.style.width = parseInt(this.width) + 'px';
	this.selectArea.style.height = parseInt(this.height) + 'px';
	addClass(this.selectArea, this.selectAreaStyle);
	addClass(leftDiv, this.selectAreaLeftStyle);
	addClass(rightDiv, this.selectAreaRightStyle);
	addClass(this.textContainer, this.selectAreaCenterStyle)
	this.textContainer.appendChild(text);
	this.selectArea.appendChild(leftDiv);
	this.selectArea.appendChild(rightDiv);
	this.selectArea.appendChild(this.textContainer);
	//insert select div
	this.select.parentNode.insertBefore(this.selectArea, this.select);
	// fix IE6 bug
	this.textContainer.style.width = this.width - 7 - getDimensions(leftDiv).width - getDimensions(rightDiv).width + 'px'
	//build & place options div
	this.optionsArea = document.createElement('ul');
	this.optionsArea.id = this.select.id + 'Options';
	this.optionsArea.style.width = parseInt(this.width) + 'px';
	if (this.dropDownSize > 0 && this.options.length > this.dropDownSize) {
		this.optionsArea.style.height = this.dropDownSize * this.optionHeight + 'px';
	}
	this.optionsArea.className = this.optionsInvisibleStyle;
	//get select's options and add to options div
	for(var w = 0; w < this.options.length; w++) {
		var optionHolder = document.createElement('li');
		optionHolder.id = this.select.id + 'Option' + w;
		if (this.options[w].text.length == 0)
			this.options[w].text = this.emptyText;
		var optionTxt = document.createTextNode(this.options[w].text);
		optionHolder.position = w;
		optionHolder.onclick = function() {
			if (self.select.multiple) {
				self.selectOption(this.position);
			}
			else {
				self.selectOption(this.position);
			}
		}
		optionHolder.onmouseover = function() {
			self.unhoverOption(self.hoveredIndex);
			self.hoveredIndex = this.position;
			self.hoverOption(self.hoveredIndex);
		}
		optionHolder.onmouseout = function() {
			self.unhoverOption(this.position);
			self.hoveredIndex = -1;
		}
		optionHolder.appendChild(optionTxt);
		this.optionsArea.appendChild(optionHolder);
		//check for pre-selected items
		if(this.options[w].selected) {
			this.selectOption(w);
			addClass(optionHolder, this.optionSelectedStyle);
		}
	}

	//insert options div
	this.selectArea.appendChild(this.optionsArea);
	
	this._initializeEventHandlers();
}

Select.prototype = {
	/**
	 * @description Initializes options.
	 * @method _initializeOptions
	 * @param {Array}	options	The options to initialize from.
	 * @return {void}
	 * @private
	 */
	_initializeOptions: function(options) {
		// initialize CSS styles
		var options = options || {};
		this.selectAreaStyle = options.selectAreaStyle || 'select-area';
		this.selectAreaOpenedStyle = options.selectAreaOpenedStyle || 'select-area-opened';
		this.selectAreaLeftStyle = options.selectAreaLeftStyle || 'select-area-left';
		this.selectAreaRightStyle = options.selectAreaRightStyle || 'select-area-right';
		this.selectAreaCenterStyle = options.selectAreaCenterStyle || 'select-area-center';
		this.optionsVisibleStyle = options.optionsVisibleStyle || 'select-options-visible';
		this.optionsInvisibleStyle = options.optionsInvisibleStyle || 'select-options-invisible';
		this.optionSelectedStyle = options.optionSelectedStyle || 'select-option-selected';
		this.optionHoveredStyle = options.optionHoveredStyle || 'select-option-hovered';
		// initialize other options
		this.emptyText = options.emptyText || '-- Select --';
		this.optionsSeparator = options.optionsSeparator || ',';
		this.optionsOverlap = options.optionsOverlap || 1;
		this.width = options.width || getDimensions(this.select).width;
		this.height = options.selectHeight || 22;
		this.optionHeight = parseInt(options.optionHeight) || 15;
		this.opened = false;
		this.hoveredIndex = -1;
		this.dropDownSize = parseInt(options.dropDownSize) || 0;
	},
	
	/**
	 * @description Initializes select event handlers.
	 * @method _initializeEventHandlers
	 * @return {void}
	 * @private
	 */
	_initializeEventHandlers: function() {
		var self = this;
		var body = document.getElementsByTagName('body')[0];
		
		var selectKeyDownHandler = function(e) {
			var e = e || window.event;
			self._handleKeyDownEvent(e);
		}
		
		var bodyClickHandler = function() {
			self.close();
			if (self.addedKeyDownHandler) {
				removeEventHandler(document, 'keydown', selectKeyDownHandler);
				self.addedKeyDownHandler = false;
			}
		}
		
		var selectAreaClickHandler = function() {
			self.toggle();
			if (self.opened) {
				if (!self.addedKeyDownHandler) {
					addEventHandler(document, 'keydown', selectKeyDownHandler);
					self.addedKeyDownHandler = true;
				}
			}
			else {
				if (self.addedKeyDownHandler) {
					removeEventHandler(document, 'keydown', selectKeyDownHandler);
					self.addedKeyDownHandler = false;
				}
			}
		}
		
		var selectMouseOutHandler = function() {
			if (!self.addedbodyClickHandler) {
				addEventHandler(body, 'click', bodyClickHandler);
				self.addedbodyClickHandler = true;
			}
		}
		
		var selectMouseOverHandler = function() {
			if (self.addedbodyClickHandler) {
				removeEventHandler(body, 'click', bodyClickHandler);
				self.addedbodyClickHandler = false;
			}
		}
		
		addEventHandler(this.selectArea, 'click', selectAreaClickHandler);
		addEventHandler(this.selectArea, 'mouseover', selectMouseOverHandler);
		addEventHandler(this.selectArea, 'mouseout', selectMouseOutHandler);
		addEventHandler(this.optionsArea, 'mouseover', selectMouseOverHandler);
		addEventHandler(this.optionsArea, 'mouseout', selectMouseOutHandler);
	},
	
	/**
	 * @description Handles select key down events.
	 * @method _handleKeyDownEvent
	 * @param {Event}	e	The event to be handled from.
	 * @return {void}
	 * @private
	 */
	_handleKeyDownEvent: function(e) {
		var keyCode = e.keyCode;
		switch (keyCode) {
			case 40: // down
				this.unhoverOption(this.hoveredIndex);
				this.hoveredIndex++;
				if (this.hoveredIndex >= this.options.length) 
					this.hoveredIndex = 0;
				this.hoverOption(this.hoveredIndex);
				break;
			case 38: // up
				this.unhoverOption(this.hoveredIndex);
				this.hoveredIndex--;
				if (this.hoveredIndex < 0) 
					this.hoveredIndex = this.options.length - 1;
				this.hoverOption(this.hoveredIndex);
				break;
			case 27: // escape
				this.close();
				break;
			case 32: // space
				this.selectOption(this.hoveredIndex);
				break;
			case 13: // enter
				if (!this.options[this.hoveredIndex].selected)
					this.selectOption(this.hoveredIndex);
				this.close();
				break;
			default:
				break;
		}
	},
	
	/**
	 * @description Opens select.
	 * @method open
	 * @return {void}
	 */
	open: function() {
		if (hasClass(this.optionsArea, this.optionsInvisibleStyle))
			replaceClass(this.optionsArea, this.optionsInvisibleStyle, this.optionsVisibleStyle);
		addClass(this.selectArea, this.selectAreaOpenedStyle);
		this.opened = true;
	},
	
	/**
	 * @description Closes select.
	 * @method close
	 * @return {void}
	 */
	close: function() {
		if (hasClass(this.optionsArea, this.optionsVisibleStyle))
			replaceClass(this.optionsArea, this.optionsVisibleStyle, this.optionsInvisibleStyle);
		removeClass(this.selectArea, this.selectAreaOpenedStyle);
		this.opened = false;
	},
	
	/**
	 * @description Toggle select.
	 * @method toggle
	 * @return {void}
	 */
	toggle: function() {
		this.opened ? this.close() : this.open();
	},

	/**
	 * @description Selects specified option.
	 * @method selectOption
	 * @param {int}	selectedIndex	The option index to be selected.
	 * @return {void}
	 */
	selectOption: function(selectedIndex) {
		//feed selected option to the actual select field
		if (this.select.multiple) {
			var option = document.getElementById(this.select.id + 'Option' + selectedIndex);
			if (option) {
				this.options[selectedIndex].selected = !this.options[selectedIndex].selected;
				this.options[selectedIndex].selected ? addClass(option, this.optionSelectedStyle) : removeClass(option, this.optionSelectedStyle);
			}
			// modify selected option
			var text = '';
			for (var k = 0; k < this.options.length; k++) {
				if (this.options[k].selected)
					text += this.options[k].text + this.optionsSeparator;
			}
			if (text.length > this.optionsSeparator.length)
				text = text.substring(0, text.length - this.optionsSeparator.length);
			else if (text.length == 0)
				text = this.emptyText;
			var newText = document.createTextNode(text);
			this.textContainer.replaceChild(newText, this.textContainer.childNodes[0]);
		}
		else {
			for (var k = 0; k < this.options.length; k++) {
				if (k == selectedIndex) {
					this.options[k].selected = true;
					var option = document.getElementById(this.select.id + 'Option' + k);
					if (option)
						addClass(option, this.optionSelectedStyle);
				}
				else {
					this.options[k].selected = false;
					var option = document.getElementById(this.select.id + 'Option' + k);
					if (option)
						removeClass(option, this.optionSelectedStyle);
				}
				//show selected option
				var newText = document.createTextNode(this.options[selectedIndex].text);
				this.textContainer.replaceChild(newText, this.textContainer.childNodes[0]);
			}
		}
	},
	
	/**
	 * @description Hovers specified option.
	 * @method hoverOption
	 * @param {int}	hoveredIndex	The option index to be hovered.
	 * @return {void}
	 */
	hoverOption: function(hoveredIndex) {
		if (hoveredIndex >= 0 && hoveredIndex < this.options.length) {
			var hoveredOption = document.getElementById(this.select.id + 'Option' + hoveredIndex);
			addClass(hoveredOption, this.optionHoveredStyle);
		}
	},
	
	/**
	 * @description Unhovers specified option.
	 * @method unhoverOption
	 * @param {int}	hoveredIndex	The option index to be unhovered.
	 * @return {void}
	 */
	unhoverOption: function(hoveredIndex) {
		if (hoveredIndex >= 0 && hoveredIndex < this.options.length) {
			var hoveredOption = document.getElementById(this.select.id + 'Option' + hoveredIndex);
			removeClass(hoveredOption, this.optionHoveredStyle);
		}
	}
}

//Useful functions

/**
 * @description Returns element dimensions.
 * @method getDimensions
 * @param {HTMLElement}	el	The DOM elementement to get dimensions of.
 * @return {Array} HTMLElement offset.
 */
function getDimensions(el) {
	if (el.style.display != 'none' && el.style.display != null) // Safari bug
		return {width: el.offsetWidth, height: el.offsetHeight};
	// All *Width and *Height properties give 0 on els with display none,
	// so enable the el temporarily
	var els = el.style;
	var originalVisibility = els.visibility;
	var originalPosition = els.position;
	var originalDisplay = els.display;
	els.visibility = 'hidden';
	els.position = 'absolute';
	els.display = 'block';
	var originalWidth = el.clientWidth;
	var originalHeight = el.clientHeight;
	els.display = originalDisplay;
	els.position = originalPosition;
	els.visibility = originalVisibility;
	return {width: originalWidth, height: originalHeight};    
}

/**
 * @description Returns an HTMLElement offset.
 * @method getOffset
 * @param {HTMLElement}	el	The DOM element to get offset of.
 * @return {Array} HTMLElement offset.
 */
function getOffset(el) {
	var valueT = 0, valueL = 0;
    do {
      valueT += el.offsetTop  || 0;
	  valueL += el.offsetLeft  || 0;
      el = el.offsetParent;
      if (el) {
        if (el.tagName.toLowerCase() == 'body')
			break;
        var pos = el.style.position;
        if (pos == 'relative' || pos == 'absolute')
			break;
      }
    } while (el);
	return {left: valueL, top: valueT};
}

/**
 * @description Determines whether an HTMLElement has the given className.
 * @method hasClass
 * @param {HTMLElement}	el		The DOM element to test.
 * @param {String}		className	The class name to search for.
 * @return {Boolean | Array} A boolean value or array of boolean values.
 */
function hasClass(el, className) {
	var elClassName = el.className;
	return (elClassName.length > 0 && (elClassName == className || new RegExp("(^|\\s)" + className + "(\\s|$)").test(elClassName)));
}

/**
 * @description Adds a class name to a given el.
 * @method addClass         
 * @param {HTMLElement}	el		The DOM element to add the class to.
 * @param {String}		className	The class name to add to the class attribute.
 * @return {void}
 */
function addClass(el, className) {
	if (!hasClass(el, className))
		el.className += (el.className ? ' ' : '') + className;
}

/**
 * @description Removes a class name from a given el.
 * @method removeClass         
 * @param {HTMLElement}	el		The DOM element or to remove the class from.
 * @param {String}		className	The class name to remove from the class attribute.
 * @return {void}
 */
function removeClass(el, className) {
	el.className = el.className.replace(new RegExp("(^|\\s+)" + className + "(\\s+|$)"), ' ').replace(/^\s+/, '').replace(/\s+$/, '');
}

/**
 * @description Replaces a class name fom a given el.
 * @method removeClass         
 * @param {HTMLElement}	el			The DOM elementement to remove the class from.
 * @param {String}		oldClassName	The class name to remove from the class attribute.
 * @param {String}		newClassName	The class name to add to the class attribute.
 * @return {void}
 */
function replaceClass(el, oldClassName, newClassName) {
	removeClass(el, oldClassName);
	addClass(el, newClassName);
}

/**
 * @description Adds a DOM event directly without the caching, cleanup, scope adj, etc.
 * @method addEventHandler
 * @param {HTMLElement}	el		The DOM element to bind the handler to.
 * @param {String}		name		The name of event handler.
 * @param {function} 		handler	The callback to invoke.
 * @return {void}
 */
function addEventHandler(el, name, handler) {
	el.addEventListener ? el.addEventListener(name, handler, false) : el.attachEvent('on' + name, handler);
}

/**
 * @description Removes a DOM event.
 * @method removeEventHandler
 * @param {HTMLElement}	el		The DOM element to bind the handler to.
 * @param {String}		name		The name of event handler.
 * @param {function} 		handler	The callback to invoke.
 * @return {void}
 */
function removeEventHandler(el, name, handler) {
	el.removeEventListener ? el.removeEventListener(name, handler, false) : el.detachEvent('on' + name, handler);
}