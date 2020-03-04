public class MyApp : Gtk.Application{
    public MyApp(){
        Object(
            application_id: "com.github.TonyChoudri.Gtk-Hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }
    protected override void activate(){
        var btn_Hello = new Gtk.Button.with_label("click me");
        btn_Hello.margin = 12;
        btn_Hello.clicked.connect(()=>{
            btn_Hello.label = "Hello Akeel";
            btn_Hello.sensitive = false;
        });
        
        var main_window = new Gtk.ApplicationWindow(this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello";
        main_window.add(btn_Hello);
        main_window.show_all();
        
        
    }
    public static int main(string[] args){
        var app = new MyApp();
        return app.run(args);
    }
}
