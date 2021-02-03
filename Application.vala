public class MyApp : Gtk.Application {
	public MyApp () {
		Object(
            //application_id: "testing.my.application",
				flags: ApplicationFlags.FLAGS_NONE);
	}

	protected override void activate () {
		// Create the window of this application and show it
		Gtk.ApplicationWindow window = new Gtk.ApplicationWindow (this);
		window.set_default_size (300, 300);
		window.title = "Hello World";

		var button_hello=new Gtk.Button.with_label("Click me!"){
			margin=12
		};

		button_hello.clicked.connect(()=>{
			button_hello.label="Hello World";
			button_hello.sensitive=false;
		});
/* Gtk.Label label = new Gtk.Label ("Hello, GTK");
		window.add (label);*/
		window.add(button_hello);
		window.show_all ();
	}

	public static int main (string[] args) {
		return new MyApp().run(args);
    }
}