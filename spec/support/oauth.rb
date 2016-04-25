OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth = OmniAuth::AuthHash.new('info' => {
                                                     'provider' => 'github',
                                                     'uid' => '123456'
                                                   })
