import sendgrid from "@sendgrid/mail";
import { NextApiRequest, NextApiResponse } from "next";

if (process.env.SENDGRID_API_KEY)
  sendgrid.setApiKey(process.env.SENDGRID_API_KEY);

const sendEmail = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    await sendgrid.send({
      to: "daniel.demonceau@yahoo.com",
      from: "daniel@cumuluscapitalmanagement.com",
      subject: `${req.body.subject}`,
      html: `<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
      <html lang="en">
      <head>
        <meta charset="utf-8">
      
        <title>The HTML5 Herald</title>
        <meta name="description" content="The HTML5 Herald">
        <meta name="author" content="SitePoint">
      <meta http-equiv="Content-Type" content="text/html charset=UTF-8" />
      
        <link rel="stylesheet" href="css/styles.css?v=1.0">
      
      </head>
      
      <body>
        <div class="img-container" style="display: flex;justify-content: center;align-items: center;border-radius: 5px;overflow: hidden; font-family: 'helvetica', 'ui-sans';">              
        </div>
        <div class="container" style="margin-left: 20px;margin-right: 20px;">
        <h3>You've got a new mail from ${req.body.name}, their email is: ✉️${req.body.email} </h3>
          <div style="font-size: 16px;">
            <p>Message:</p>
            <p>${req.body.message}</p>
            <br>
          </div>
          <p class="footer" style="font-size: 16px;padding-bottom: 20px;border-bottom: 1px solid #D1D5DB;">Regards<br>Manu Arora<br>Software Developer<br>+91 9587738861</p>
          <div class="footer-links" style="display: flex;justify-content: center;align-items: center;">
          </div>
        </div>
      </body>
      </html>`,
    });
  } catch (error: unknown) {
    if (error instanceof Error) {
      console.log(`error: ${error}`);
      return res.status(500).json({ error: error.message });
    }
  }

  return res.status(200).json({ error: "" });
};

export default sendEmail;
