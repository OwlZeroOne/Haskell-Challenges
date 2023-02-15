-- Clean up user-entered phone numbers so that they can be sent SMS messages.

-- The North American Numbering Plan (NANP) is a telephone numbering system used by many countries in North America like the United States, Canada or Bermuda. All NANP-countries share the same international country code: 1.

-- NANP numbers are ten-digit numbers consisting of a three-digit Numbering Plan Area code, commonly known as area code, followed by a seven-digit local number. The first three digits of the local number represent the exchange code, followed by the unique four-digit number which is the subscriber number.

-- The format is usually represented as

-- (NXX)-NXX-XXXX
-- where N is any digit from 2 through 9 and X is any digit from 0 through 9.

-- Your task is to clean up differently formatted telephone numbers by removing punctuation and the country code (1) if present.

-- For example, the inputs

--     - +1 (613)-995-0253
--     - 613-995-0253
--     - 1 613 995 0253
--     - 613.995.0253
-- should all produce the output

-- 6139950253


-- PROGRAM WILL ASSUME SPACE BETWEEN DIAL CODE AND PHONE NUMBER
dialCodes :: [String]
dialCodes = ["+1 ","+7 ","+20 ","+27 ","+30 ","+31 ","+32 ","+33 ","+34 ","+36 ","+39 ","+40 ","+41 ","+43 ","+44 ","+45 ","+46 ","+47 ","+48 ","+49 ","+51 ","+52 ","+53 ","+54 ","+55 ","+56 ","+57 ","+58 ","+60 ","+61 ","+62 ","+63 ","+64 ","+65 ","+66 ","+77 ","+81 ","+82 ","+84 ","+86 ","+90 ","+91 ","+92 ","+93 ","+94 ","+95 ","+98 ","+211 ","+212 ","+213 ","+216 ","+218 ","+220 ","+221 ","+222 ","+223 ","+224 ","+225 ","+226 ","+227 ","+228 ","+229 ","+230 ","+231 ","+232 ","+233 ","+234 ","+235 ","+236 ","+237 ","+238 ","+239 ","+240 ","+241 ","+242 ","+243 ","+244 ","+245 ","+246 ","+248 ","+249 ","+250 ","+251 ","+252 ","+253 ","+254 ","+255 ","+256 ","+257 ","+258 ","+260 ","+261 ","+262 ","+263 ","+264 ","+265 ","+266 ","+267 ","+268 ","+269 ","+290 ","+291 ","+297 ","+298 ","+299 ","+345 ","+350 ","+351 ","+352 ","+353 ","+354 ","+355 ","+356 ","+357 ","+358 ","+359 ","+370 ","+371 ","+372 ","+373 ","+374 ","+375 ","+376 ","+377 ","+378 ","+379 ","+380 ","+381 ","+382 ","+385 ","+386 ","+387 ","+389 ","+420 ","+421 ","+423 ","+500 ","+501 ","+502 ","+503 ","+504 ","+505 ","+506 ","+507 ","+508 ","+509 ","+590 ","+591 ","+593 ","+594 ","+595 ","+596 ","+597 ","+598 ","+599 ","+670 ","+672 ","+673 ","+674 ","+675 ","+676 ","+677 ","+678 ","+679 ","+680 ","+681 ","+682 ","+683 ","+685 ","+686 ","+687 ","+688 ","+689 ","+690 ","+691 ","+692 ","+850 ","+852 ","+853 ","+855 ","+856 ","+872 ","+880 ","+886 ","+960 ","+961 ","+962 ","+963 ","+964 ","+965 ","+966 ","+967 ","+968 ","+970 ","+971 ","+972 ","+973 ","+974 ","+975 ","+976 ","+977 ","+992 ","+993 ","+994 ","+995 ","+996 ","+998 ","+1242 ","+1246 ","+1264 ","+1268 ","+1284 ","+1340 ","+1441 ","+1473 ","+1649 ","+1664 ","+1670 ","+1671 ","+1684 ","+1758 ","+1767 ","+1784 ","+1849 ","+1868 ","+1869 ","+1876 ","+1939 "]

-- MAIN FUNCTION
number :: String -> Maybe String
number xs = error "You need to implement this function."

numberContainsPlus :: String -> Bool
numberContainsPlus (x:_) = x == '+'

determineDialCode :: String -> String
determineDialCode xs = head [code | code <- dialCodes, take (length code) xs == code]

removeDialCode :: String -> String
removeDialCode xs = drop (length (determineDialCode xs)) xs