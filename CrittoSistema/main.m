%Main
clc
clear all

%Step 1: Definizine messaggio e parametri
m = 'The answer is 42';
params = [47, 3, 128, 7]; params = num2cell(params);

% Step 2: Generazione delle chiavi
[cryptanalysis, public_key, private_key] = Alice_keys_gen(params);

%Step 3: Cifratura messaggio
[R, e_poly_Rq_arr] = NTRUEncrypt(m, params, public_key)

%Step 4: Decifrature messaggio
[d] = NTRUDecrypt(e_poly_Rq_arr, R, params, private_key)
