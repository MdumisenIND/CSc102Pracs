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

namespace Task4
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		Turtle tess;
		
		public MainWindow()
		{
			InitializeComponent();
			tess = new Turtle(canvas, 0, 200);
            tess.DelayMillisecs = 100;
		}

		void DrawShape()
		{
            tess.Heading = 0;
            for (int i = 0; i < 5; i = i + 1)
            {
                tess.Forward(200);
                tess.Right(144);
            }
		}
	
		void DrawMoreShapes(int num)
		{
            for (int i = 0; i < num; i = i + 1)
            {
                DrawShape();
                tess.Forward(200);
            }
			
		}

		void Clear()
		{
            tess.Clear();
            tess.WarpTo(0, 200);
		}
		private void btnClear_Click(object sender, RoutedEventArgs e)
		{
            Clear();
		}
		
		private void btnTriangles_Click(object sender, RoutedEventArgs e)
		{
            if (cmbNum.Text == "")
            {
                int num = (int)MessageBox.Show("Select a valid option from combo box!!!");
            }
            else
            {
                DrawMoreShapes(Convert.ToInt32(cmbNum.Text));
            }
        }

        private void ComboBoxItem_Selected(object sender, RoutedEventArgs e)
        {

        }
    }
}
