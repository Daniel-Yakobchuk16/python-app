import sqlite3
from kivy.app import App
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.lang.builder import Builder
from kivy.properties import ObjectProperty
from kivy.core.window import Window

Window.size = (400, 600)

class main_page(Screen):
    def mary(self):
        self.sterownik  = sterownik
        self.sterownik.current = "worker_2"
    def matt(self):
        self.sterownik  = sterownik
        self.sterownik.current = "worker_1"
    def antony(self):
        self.sterownik  = sterownik
        self.sterownik.current = "worker_3"
    pass
class worker_1(Screen):
    def back(self):
        self.sterownik = sterownik
        self.sterownik.current = "main_page"
        pass

class worker_2(Screen):
    def back(self):
        self.sterownik = sterownik
        self.sterownik.current = "main_page"
        pass

class worker_3(Screen):
    def back(self):
        self.sterownik = sterownik
        self.sterownik.current = "main_page"
        pass

class MainApp(App):
    word_label = ObjectProperty()

    def build(self):
        global sterownik
        sterownik = ScreenManager()
        sterownik.add_widget(Builder.load_file("main_page.kv"))
        sterownik.add_widget(Builder.load_file("worker_2.kv"))
        sterownik.add_widget(Builder.load_file("worker_1.kv"))
        sterownik.add_widget(Builder.load_file("worker_3.kv"))
        return sterownik

    def show_records(self, name, screen):
        conn = sqlite3.connect('app_workers.db')
        c = conn.cursor()
        c.execute(f"SELECT Hours, Projects, Rating FROM workers_info WHERE name = '{name}'")
        records = c.fetchall()
        conn.close()

        for record in records:
            self.root.get_screen(screen).ids.word_label.text += f"\n{record[0]}"
            self.root.get_screen(screen).ids.word_label2.text += f"\n{record[1]}"
            self.root.get_screen(screen).ids.word_label3.text += f"\n{record[2]}"

    def show_recordsMary(self):
        self.show_records("Daniel", "worker_2")

    def show_recordsMatt(self):
        self.show_records("Bogdan", "worker_1")

    def show_recordsAntony(self):
        self.show_records("Alexa", "worker_3")


if __name__ == "__main__":
    MainApp().run()


