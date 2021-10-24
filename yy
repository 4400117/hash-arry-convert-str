using System;
using System.Security.Cryptography;
using System.Text;

namespace ComputeAHash_csharp
{
    /// <summary>
    /// Summary description for Class1.
    /// </summary>
    class Class1
    {
        static void Main(string[] args)
        {
            string sSourceData;
            byte[] tmpSource;
            byte[] tmpHash;
            byte[] tmpNewHash;

            sSourceData = "MySourceData";
            // error here     Console.WriteLine(tmpSource);
            //Create a byte array from source data
            tmpSource = ASCIIEncoding.ASCII.GetBytes(sSourceData);
            Console.WriteLine(ByteArrayToString(tmpSource));


            // will print System.Byte[]
            




            //
            //HashAlgorithm sha1 = HashAlgorithm.Create();
            //Console.WriteLine(sha1);


            //Compute hash based on source data
            tmpHash = new MD5CryptoServiceProvider().ComputeHash(tmpSource);
            // print and Function Call
            Console.WriteLine(ByteArrayToString(tmpHash));

            sSourceData = "MySourceData";
            tmpSource = ASCIIEncoding.ASCII.GetBytes(sSourceData);


            //byte[] tmpNewHash;
            tmpNewHash = new MD5CryptoServiceProvider().ComputeHash(tmpSource);
            //
            Console.WriteLine(ByteArrayToString(tmpNewHash));

            bool bEqual = false;

            if (tmpNewHash.Length == tmpHash.Length)
            {

                Console.WriteLine(tmpNewHash.Length);
                Console.WriteLine(tmpNewHash.Length);

                int i = 0;
                while ((i < tmpNewHash.Length) && (tmpNewHash[i] == tmpHash[i]))
                {
                    //Console.WriteLine(tmpNewHash[i]);
                    //Console.WriteLine(tmpHash[i]);
                    i += 1;
                }

                Console.WriteLine("i now is ",i);

                if (i == tmpNewHash.Length)
                {
                    bEqual = true;
                }
            }

            if (bEqual)
                Console.WriteLine("The two hash values are the same");
            else
                Console.WriteLine("The two hash values are not the same");
            //try
            //{
            //HashAlgorithm sha = HashAlgorithm.Create();
            //Console.WriteLine(sha);
            char[] letters = { 'A', 'B', 'C' };
            string alphabet = new string(letters);
            Console.WriteLine(alphabet);


            Console.ReadLine();
            //}

            //catch { }


            Console.WriteLine(sSourceData);
            Console.WriteLine(tmpSource);
            Console.WriteLine(tmpHash);
            Console.WriteLine(tmpNewHash);

        } // End The Main() 



        // New Function

        static string ByteArrayToString(byte[] arrInput)
        {
            int i;
            StringBuilder sOutput = new StringBuilder(arrInput.Length);
            //Console.WriteLine(arrInput);
            Console.WriteLine(arrInput.Length);
            for (i = 0; i < arrInput.Length - 1; i++)
            {
                sOutput.Append(arrInput[i].ToString("X2"));
            }
            return sOutput.ToString();
        }
    }
}
