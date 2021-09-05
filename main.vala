public class Application : Gtk.Window {
	private Gtk.Calendar calendar;

	public Application () {
		this.title = "xyz.jaydenchan.cal";
		this.window_position = Gtk.WindowPosition.MOUSE;
		this.destroy.connect(Gtk.main_quit);
		this.set_default_size(300, 300);

		this.calendar = new Gtk.Calendar();
		this.add(this.calendar);

		this.calendar.mark_day(1);
	}

	public static int main (string[] args) {
		Gtk.init (ref args);

		Application app = new Application ();
		app.show_all ();
		Gtk.main ();
		return 0;
	}
}
