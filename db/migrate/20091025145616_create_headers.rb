class CreateHeaders < ActiveRecord::Migration
  def self.up
#    create_table :headers do |t|
#      t.text :content
      
#      t.timestamps
#    end

    Header.create :content => "<div>
		<div style='float: right;'>
		  <img src='/images/office.png?1249505770' alt=\"Office\"/>
		</div>
		<div style='float: left;'>
                  <a href=\"/\"><img src=\"/images/dreamy.png?1249505770\" class=\"header-title\" alt=\"Dreamy\"/></a>
		</div>
		<div class='clearer'> </div>
	</div>"
  end

  def self.down
    drop_table :headers
  end
end
