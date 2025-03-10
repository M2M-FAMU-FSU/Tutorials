#Working with OpenCASCADE
from OCC.Display.SimpleGui import init_display
from OCC.Core.BRepPrimAPI import BRepPrimAPI_MakeBox

display, start_display, add_menu, add_function_to_menu = init_display()
my_box = BRepPrimAPI_MakeBox(10.0, 20.0, 30.0).Shape()

display.DisplayShape(my_box, update=True)
start_display()