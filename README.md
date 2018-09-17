# django-saml2-idp

A Django SAML2 SSO Identity Provider PoC.
Integrates with this [Django SAML2 Service Provider PoC](https://github.com/ramonsaraiva/django-saml2-sp) _(SP metadata XML file built-in)_.  
Uses [djangosaml2idp](https://github.com/OTA-Insight/djangosaml2idp) as its skeleton.

## Running

To run the IdP side of the SAML2 SSO, clone it and run `docker-compose up`.
Make sure your host `8000` port is available.

Access http://localhost:8000/ to see the index page, it will show which user you are authenticated with (`AnonymousUser` if unauthenticated) and the possible actions you can take, either `login` or `logout`.

## Authentication flows

### IdP initiated flow
1. Go to IdP url http://localhost:8000/
2. Click on the `login` button
3. You're logged in in the IdP.

Whenever you go to the SP page, as soon as you click `login` there, you will be automatically authenticated.

### SP initiated flow
1. Clone the [Django SAML2 Service Provider PoC](https://github.com/ramonsaraiva/django-saml2-sp)
2. Spin it up with `docker-compose up`
3. Go to the SP url http://localhost:9000/
4. Click on the `login` button
5. You'll be redirected to the IdP login flow
6. Login on the IdP
7. You'll be redirected to the SP, authenticated.
