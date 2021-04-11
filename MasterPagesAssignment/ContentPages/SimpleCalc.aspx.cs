using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesAssignment.ContentPages
{
    public partial class SimpleCalc : System.Web.UI.Page
    {
        protected void ComputeFunction(object sender, EventArgs e)
        {
            //string myFirstNumber = TextBox2.Text;
            //string mySecondNumber = TextBox1.Text;
            //string myOperator = RadioButtonList1.SelectedValue;


            //TextBox3.Text = string.Format(myFirstNumber + myOperator + mySecondNumber + " = "  );

            Page.Validate();
            if (Page.IsValid)
            {
                double firstNumber = double.Parse(TextBox2.Text);
                double secondNumber = double.Parse(TextBox1.Text);
                int oprand = RadioButtonList1.SelectedIndex;
                double calcValue = 0;
                string output = "";

                switch (oprand)
                {
                    case 0:
                        calcValue = firstNumber + secondNumber;
                        calcValue = Math.Round(calcValue, 2);
                        output = firstNumber.ToString() + " + " + secondNumber.ToString() + " = " + calcValue.ToString();
                        break;
                    case 1:
                        calcValue = firstNumber - secondNumber;
                        calcValue = Math.Round(calcValue, 2);
                        output = firstNumber.ToString() + " - " + secondNumber.ToString() + " = " + calcValue.ToString();
                        break;
                    case 2:
                        calcValue = firstNumber * secondNumber;
                        calcValue = Math.Round(calcValue, 2);
                        output = firstNumber.ToString() + " * " + secondNumber.ToString() + " = " + calcValue.ToString();
                        break;
                    case 3:
                        calcValue = firstNumber / secondNumber;
                        calcValue = Math.Round(calcValue, 2);
                        //output = firstNumber.ToString() + " / " + secondNumber.ToString() + " = " + calcValue.ToString();
                        output = string.Format("{0} / {1} = {2}", firstNumber.ToString(), secondNumber.ToString(), calcValue.ToString());
                        break;
                }
                TextBox3.Text = output;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SimpleCalc.aspx", true);
        }
    }
}
