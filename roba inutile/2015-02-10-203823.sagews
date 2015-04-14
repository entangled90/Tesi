︠d8f6fe6c-880d-411f-8444-709b4bd4fdb1︠

︠48b4d875-b526-441a-865a-56406bbc67a0︠

︠8204b01d-ca2d-4719-918c-02d5b49cb018︠

︠9ea207a3-0b4c-42df-b0a9-545181918947︠

︠4c338bdf-5f21-4022-bb05-dd82a8786dfd︠

︡a2e73e08-4edf-4bc8-9c0c-d1293791befa︡
︠0e13c2fd-b43e-44cd-9512-2e41badc313fs︠
GammaH( x, sign, omega,omega_1,omega_2) =  sign*(( x - omega )**2 - (omega_1**2 + omega_2**2)/(12))
var('N_f')
var('N_c')
var('k')
var('omega')
var('omega_1')
var('omega_2')
var('m_a')
tm_a =var('tm_a', latex_name="\\tilde{m}_a")
var('m_A')
var('m_B')
var('m_1 m_2')
var('Delta_Q Delta_X Delta_M')
var('l')
tsigma_i = var('tsigma_i',latex_name = "\\sigma'_i")
trho_i = var('trho_i',latex_name = "\\rho'_i")
︡1da3f12a-c2bc-4f4e-a1d2-c57133f83a1d︡{"stdout":"N_f\n"}︡{"stdout":"N_c\n"}︡{"stdout":"k\n"}︡{"stdout":"omega\n"}︡{"stdout":"omega_1\n"}︡{"stdout":"omega_2\n"}︡{"stdout":"m_a\n"}︡{"stdout":"m_A\n"}︡{"stdout":"m_B\n"}︡{"stdout":"(m_1, m_2)\n"}︡{"stdout":"(Delta_Q, Delta_X, Delta_M)\n"}︡{"stdout":"l\n"}︡
︠383825d8-d595-452e-96ef-313f16be90d0s︠
mu_a= m_a + m_A - m_1 + omega*Delta_Q
nu_a= - tm_a + m_A - m_1 + omega*Delta_Q
mu_Nf= - m_2 - m_A*N_f+ omega*Delta_M
nu_Nf= m_2 - m_A*N_f + omega*Delta_M
︡136c3717-0e4a-4549-8a31-8ce4fabd231a︡
︠e4e4fa8c-6c94-4237-94e9-ecc459db6eaes︠
Mesons = (GammaH( mu_a +nu_Nf+omega*l*Delta_X,1,omega,omega_1,omega_2)+GammaH(mu_Nf+nu_a+omega*l*Delta_X,-1,omega,omega_1,omega_2))
︡12b5bbff-d8f7-496f-9927-73be7e32a6e1︡
︠9efa05c4-bf7d-4327-ad57-5478aa9d4528si︠
Mesons.simplify()
︡6350b608-0965-41db-a4b1-e092f098cff2︡{"stdout":"(Delta_X*l*omega - N_f*m_A + Delta_M*omega + Delta_Q*omega - m_1 + m_2 + m_A + m_a - omega)^2 - (Delta_X*l*omega - N_f*m_A + Delta_M*omega + Delta_Q*omega - m_1 - m_2 + m_A - omega - tm_a)^2\n"}︡
︠17081364-50b8-4a41-958e-f56ad604c361︠

︡d1183320-c8b1-4b85-91d3-b5ab03866dbd︡
︠e608bc48-8b40-440d-a490-b8d1bbdd029b︠

︡090982c7-7fc5-4bf8-b1a3-efb9c64f0acd︡
︠296dd7e0-6155-48ef-8c1b-24e61d0c9757︠

︡1734448c-7500-4c8a-95f2-3c3360be934e︡
︠dfe2e4fb-dfe6-41c4-a452-50ee69b6d6f6s︠
M = Mesons.full_simplify()
M = M.collect((Delta_X*l + Delta_Q -1 + Delta_M))
M = M.collect(m_a).collect(tm_a)
︡c99ca3ea-7149-46a3-9d62-806b08f948fa︡
︠dfa346c0-96e9-4fa1-a165-404e3f45225fs︠
latex(M)
︡7c251ec5-b4c1-4482-a31f-7ea1b99f6d47︡{"stdout":"-4 \\, {\\left(N_{f} - 1\\right)} m_{2} m_{A} + 4 \\, {\\left(\\Delta_{X} l + \\Delta_{M} + \\Delta_{Q} - 1\\right)} m_{2} \\omega - 4 \\, m_{1} m_{2} - 2 \\, {\\left({\\left(N_{f} - 1\\right)} m_{A} - {\\left(\\Delta_{X} l + \\Delta_{M} + \\Delta_{Q} - 1\\right)} \\omega + m_{1} - m_{2}\\right)} m_{a} + m_{a}^{2} - 2 \\, {\\left({\\left(N_{f} - 1\\right)} m_{A} - {\\left(\\Delta_{X} l + \\Delta_{M} + \\Delta_{Q} - 1\\right)} \\omega + m_{1} + m_{2}\\right)} {\\tilde{m}_a} - {\\tilde{m}_a}^{2}\n"}︡
︠9b64a53e-0918-4785-a0be-4481def2c434︠
︡e4a354f5-1732-4797-bee3-fbd2d392bfe9︡
︠94cdfee2-005d-4160-b865-00a90b65b757︠

︡d4f4cbe1-8b66-4f79-9241-000c38c72f88︡
︠ff72d044-1914-44b7-9c27-df858553ee2s︠
%html
Masses for Chirals and so on 

︡16ad4923-e305-4c1c-b7a3-c330c1ed1cc3︡{"html":"Masses for Chirals and so on \n\n"}︡
︠d94c1e89-80f0-4b2d-9bc5-eff9c5daf4ecs︠

M_a = omega*(Delta_X - Delta_Q ) + m_B*(N_c/(k(N_f+1)-N_c)) - m_a - m_A + m_1
M_N = omega*(Delta_X - Delta_M ) + m_B*(N_c/(k(N_f+1)-N_c)) +m_2 + m_A*N_f
N_a = omega*(Delta_X - Delta_Q ) - m_B*(N_c/(k(N_f+1)-N_c)) + tm_a + m_A - m_1
N_N = omega*(Delta_X - Delta_Q ) - m_B*(N_c/(k(N_f+1)-N_c)) - m_A*N_f - m_2
︡83bf6af6-7a62-4898-a852-290a1597f4ce︡
︠07465283-aa4d-4e90-8884-532caca682c1s︠
sigma_i = - m_1 + k/((k*(N_f+1)-N_c)*(k*N_f - N_c)) + tsigma_i
rho_i = - m_2 - 1/((k*(N_f+1)-N_c))+trho_i
︡ae4c337c-0f62-4659-af78-d5a2433761c9︡
︠bb3edee2-309e-4f38-9a09-575522422b26︠

︡51967755-a8f7-4b41-bcea-291d4627ed9f︡
︠b1b192df-8580-4f75-acb6-d82d1254e7d5︠

︡2c446541-c125-4967-ac33-f351bcdc5b51︡
︠ef1b2b24-d93b-4fc8-bf95-b54cc9152e39s︠
Chirals1 = GammaH( M_N + sigma_i,-1,omega,omega_1,omega_2 )+ GammaH( N_N - sigma_i,+1,omega,omega_1,omega_2 )
Chirals1 = Chirals1.collect(Delta_M**2 - Delta_Q**2 -2*(Delta_M - Delta_Q)*Delta_X+2*Delta_M - 2*Delta_Q).collect(m_a).collect(tm_a)
latex(Chirals1)
︡7b5a5a2e-9b4e-4173-9d62-ffa24600e86a︡{"stdout":"-{\\left(N_{f} m_{A} - {\\left(\\Delta_{M} - \\Delta_{X}\\right)} \\omega - m_{1} + m_{2} - \\frac{N_{c} m_{B}}{N_{c} - N_{f} - 1} - \\omega + {\\sigma'_i} + \\frac{k}{{\\left({\\left(N_{f} + 1\\right)} k - N_{c}\\right)} {\\left(N_{f} k - N_{c}\\right)}}\\right)}^{2} + {\\left(N_{f} m_{A} + {\\left(\\Delta_{Q} - \\Delta_{X}\\right)} \\omega - m_{1} + m_{2} - \\frac{N_{c} m_{B}}{N_{c} - N_{f} - 1} + \\omega + {\\sigma'_i} + \\frac{k}{{\\left({\\left(N_{f} + 1\\right)} k - N_{c}\\right)} {\\left(N_{f} k - N_{c}\\right)}}\\right)}^{2}\n"}︡
︠2eb7d43f-0674-45ee-996e-86b7cba27b73︠
Chirals2 = GammaH( M_a + rho_i,-1,omega,omega_1,omega_2 )+ GammaH( N_a - rho_i,+1,omega,omega_1,omega_2 )
︡a92a9e91-bf9e-4b92-ba1f-2e2ab0d855d7︡
︠037fc612-34a5-4f25-b4a4-f4e8e3808cfb︠









