'use client';
import { useEffect } from 'react';
import Script from 'next/script';

/**
 * A Next.js component that renders a Google Sign-In button.
 *
 * @param {{ googleCallback: (credential: string) => void }} props
 *   The callback function that will be called with the credential
 *   string when the user selects a Google account.
 *
 * @returns {JSX.Element} A `<div>` element that contains the Google
 *   Sign-In button.
 */
function GoogleBtn({ googleCallback }) {
  console.log({ client: process.env.NEXT_PUBLIC_CLIENT_ID });

  useEffect(() => {
    // Initialize the Google Sign-In API after the script loads
    if (window.google) {
      window.google.accounts.id.initialize({
        client_id: process.env.NEXT_PUBLIC_CLIENT_ID,
        callback: googleCallback,
      });
      window.google.accounts.id.renderButton(
        document.getElementById('google-signin-button'),
        {
          theme: 'outline',
          size: 'large',
        },
      );
      // window.google.accounts.id.prompt(); // Optional auto-prompt
    }
  }, []);
  return (
    <>
      <Script
        src="https://accounts.google.com/gsi/client"
        strategy="beforeInteractive"
      />
      <div id="google-signin-button" className="w-100"></div>
    </>
  );
}

export default GoogleBtn;
