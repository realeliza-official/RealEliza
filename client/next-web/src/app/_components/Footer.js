import { VscGithub } from 'react-icons/vsc';
import { FaDiscord, FaTwitter } from 'react-icons/fa';
import { Link } from '@nextui-org/link';

export default function Footer() {
  return (
    <footer className='pt-10'>
      <div className='flex justify-center py-4'>
        <Link
          className='basis-14 flex justify-center mr-5'
          href='https://github.com/realeliza-official/RealEliza'
          target='_blank'
          rel='noreferrer'
          aria-label='link to Github'
          color='foreground'
        >
          <VscGithub size={24} />
        </Link>
        <Link
          className='basis-14 flex justify-center mr-5'
          href='/join-discord'
          target='_blank'
          rel='noreferrer'
          aria-label='link to Discord'
          color='foreground'
        >
          <FaDiscord size={24} />
        </Link>
        <Link
          className='basis-14 flex justify-center'
          href='https://twitter.com/agishaun'
          target='_blank'
          rel='noreferrer'
          aria-label='link to Twitter'
          color='foreground'
        >
          <FaTwitter size={24} />
        </Link>
      </div>
      <p className='copyright text-xs text-center my-7'>
        Copyright © 2023 RealEliza. All rights reserved. Any AI character&apos;s statements are
        fictional and don&apos;t represent actual beliefs or opinions. Ver:{' '}
        {process.env.NEXT_PUBLIC_RC_BUILD_NUMBER}
      </p>
    </footer>
  );
}
