using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ThinkLib;

namespace Task3
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		Turtle tess;
		public enum Size { Small, Medium, Large };
		// these are the dimensions of the canvas
		double canvasHeight = 640;
		double canvasWidth = 760;
        Size size;

        public MainWindow()
		{
			InitializeComponent();
            tess = new Turtle(canvas, 320, 380);
            tess.BatchSize = 0;
            warpTo(canvasWidth / 2, canvasHeight / 2);
		}

		void Circle(double size)
		{
            tess.WarpTo(760 / 2, 500);
            tess.BrushWidth = sliBrushWidth.Value;
            for (int i = 0; i < 360; i = i + 1 )
            {
                tess.Forward(size);
                tess.Right(360 - 1);
            }
		}

		void House(double length, double width)
		{
            tess.BrushWidth = sliBrushWidth.Value;
            Square(width); Rectangle(length, width); Triangle(width);
		}

		void Triangle(double size)
		{
            tess.Heading = 0;
            for (int i = 0; i < 3; i = i + 1)
            {
                tess.Forward(size);
                tess.Left(360 / 3);
            }
            
			
		}

		void Square(double size)
		{
            tess.WarpTo(355-(size/2), 580);
            tess.Heading = 0;
            Rectangle(size, size);
		}

		void Rectangle(double length, double width)
		{
            tess.Heading = 0;
            for (int i = 0; i < 4; i =i +1)
            {
                tess.Forward(width);
                tess.Left(90);
                tess.Forward(length);
                tess.Left(90);

            }
            tess.Heading = 270;
            tess.Forward(length);

        }

		public Tuple<double,double>  setHouseSize(Size size)
		{
            double valWidth = 0, valLength = 0;

            switch (size)
            {
                case Size.Small:
                    valWidth = 150;
                    valLength = 50;
                    break;
                case Size.Medium:
                    valWidth = 200;
                    valLength = 75;
                    break;
                case Size.Large:
                    valWidth = 250;
                    valLength = 100;
                    break;
            }

            return Tuple.Create(valLength,valWidth);

		}
		double setCircleSize(Size size)
		{
            double val = 0;
            switch (size)
            {
                case Size.Small:
                    val = 1;
                    break;

                case Size.Medium:
                    val = 2;
                    break;

                case Size.Large:
                    val = 3;
                    break;
                    
            }
            return val; ;
		}

		private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
		{
       
        }
		void warpTo(double x, double y)
		{
            tess.WarpTo(x, y);
		}

		private void btnCircle_Click(object sender, RoutedEventArgs e)
		{
            double _circle = setCircleSize(size);
            if (cmbSize.Text == "")
            {
                MessageBox.Show("Select Size from Combo Box");
            }
            else
            {
                Circle(_circle);
            }                
           
		}

		private void btnHouse_Click(object sender, RoutedEventArgs e)
		{
            var ans = setHouseSize(size);
            double x = ans.Item2, y = ans.Item1;

            if (cmbSize.Text == "")
            {
                MessageBox.Show("Select Size from Combo Box");
            }
            else
            {
                House(y, x);
            }

		}

		private void btnClear_Click(object sender, RoutedEventArgs e)
		{
            tess.Clear();
		}

        private void cmbSize_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        public void S_Selected(object sender, RoutedEventArgs e)
        {
            size = Size.Small;
        }

        public void M_Selected(object sender, RoutedEventArgs e)
        {
            size = Size.Medium;
        }

        public void L_Selected(object sender, RoutedEventArgs e)
        {
            size = Size.Large;
        }
    }
}
