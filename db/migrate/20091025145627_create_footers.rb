class CreateFooters < ActiveRecord::Migration
  def self.up
    create_table :footers do |t|
      t.text :content

      t.timestamps
    end

    Footer.create :content => "<div style=\"width: 50%;\" class=\"footer-left\">
		<a href=\"http://dreamydays.ru\">© 2009 dreamydays.ru</a>
	</div>
	<div style=\"width: 18%;\" class=\"footer-right\">
		<p>сделано в <a href=\"http://365degrees.ru\">365degrees</a></p>
		<p class=\"footer-bottom-label\">сделано с любовью</p>
	</div>
	<div class=\"clearer\"> </div>"
  end

  def self.down
    drop_table :footers
  end
end
