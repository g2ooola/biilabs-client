module Biilabs
  module Rspec
    module MockData
      module Client
        POST_TANGLE = {
          input: {
            message: " AbC - 0123",
            tag: "default"
          },
          request_body: "{\"tag\":\"SCTCUCPCID9DHD\",\"message\":\"EAKBQCMBEARAEAUAVAWAXA\"}",
          response: {
            status: 200,
            body: "{\"hash\":\"C9FTQDZYJSR9PWYHMTFVRNHDCLENAHFBSNGCUOMELH9WEUTRGDSCOARVQQPKEKVFFKGGSZIRZOHRZ9999\",\"signature_and_message_fragment\":\"EAKBQCMBEARAEAUAVAWAXA99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\",\"address\":\"POWEREDBYTANGLEACCELERATOR9999999999999999999999999999999999999999999999999999999\",\"value\":0,\"obsolete_tag\":\"ACTCUCPCID9DHD9999999999999\",\"timestamp\":1553829373539,\"current_index\":0,\"last_index\":0,\"bundle_hash\":\"ZBWAUEJCYQHCCARKDVWIGUCOJDUVDJGIAIL9BELEWWKDKWKHIX9ZUJLJRPBJJYOTGOLHXPAULDSDIIXAX\",\"trunk_transaction_hash\":\"IEXMJJUBJLAMDLDNKHZKDFCEMXD9SLINUOB99TXIYJQPAMMYTEDJPAZQZPDOCAREGHVRTOGYLJKRA9999\",\"branch_transaction_hash\":\"GE9JXSBQWRABWBVQQUCHYUPWKSSPXBISQLIAEDJYXBJGVGIKJWTCZCXDJKBZHPJOIIRGNSZ9JUSBZ9999\",\"tag\":\"SCTCUCPCID9DHD9999999999999\",\"attachment_timestamp\":1553829374238,\"attachment_timestamp_lower_bound\":0,\"attachment_timestamp_upper_bound\":3812798742493,\"nonce\":\"VTB9999999UIPC9999999999999\"}"
          },
          output: {
            status: 200,
            info: {
              message: " AbC - 0123",
              tag: "default",
              node_id: "C9FTQDZYJSR9PWYHMTFVRNHDCLENAHFBSNGCUOMELH9WEUTRGDSCOARVQQPKEKVFFKGGSZIRZOHRZ9999",
              created_at: 1553829374238
            }
          }
        }


        GET_TANGLE = {
          node_id: 'C9FTQDZYJSR9PWYHMTFVRNHDCLENAHFBSNGCUOMELH9WEUTRGDSCOARVQQPKEKVFFKGGSZIRZOHRZ9999',
          response: {
            status: 200,
            body: "{\"hash\":\"C9FTQDZYJSR9PWYHMTFVRNHDCLENAHFBSNGCUOMELH9WEUTRGDSCOARVQQPKEKVFFKGGSZIRZOHRZ9999\",\"signature_and_message_fragment\":\"EAKBQCMBEARAEAUAVAWAXA99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\",\"address\":\"POWEREDBYTANGLEACCELERATOR9999999999999999999999999999999999999999999999999999999\",\"value\":0,\"obsolete_tag\":\"ACTCUCPCID9DHD9999999999999\",\"timestamp\":1553829373539,\"current_index\":0,\"last_index\":0,\"bundle_hash\":\"ZBWAUEJCYQHCCARKDVWIGUCOJDUVDJGIAIL9BELEWWKDKWKHIX9ZUJLJRPBJJYOTGOLHXPAULDSDIIXAX\",\"trunk_transaction_hash\":\"IEXMJJUBJLAMDLDNKHZKDFCEMXD9SLINUOB99TXIYJQPAMMYTEDJPAZQZPDOCAREGHVRTOGYLJKRA9999\",\"branch_transaction_hash\":\"GE9JXSBQWRABWBVQQUCHYUPWKSSPXBISQLIAEDJYXBJGVGIKJWTCZCXDJKBZHPJOIIRGNSZ9JUSBZ9999\",\"tag\":\"SCTCUCPCID9DHD9999999999999\",\"attachment_timestamp\":1553829374238,\"attachment_timestamp_lower_bound\":0,\"attachment_timestamp_upper_bound\":3812798742493,\"nonce\":\"VTB9999999UIPC9999999999999\"}"
          },
          result: {
            status: 200,
            info: {
              message: " AbC - 0123",
              tag: "default",
              node_id: "C9FTQDZYJSR9PWYHMTFVRNHDCLENAHFBSNGCUOMELH9WEUTRGDSCOARVQQPKEKVFFKGGSZIRZOHRZ9999",
              created_at: 1553829374238
            }
          }
        }


        GET_TAG_TANGLE = {
          tag: 'tt1553843093',
          response: {
            status: 200,
            body: "{\"transactions\":[{\"hash\":\"VCMPD9GQUDCNBYSSPGZHEHUNSDVYTNVIAU9WCRYRMZIHAZHPEOTIOCBSKDIRCA9EW9TAULIKGXMT99999\",\"signature_and_message_fragment\":\"ADWA99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\",\"address\":\"POWEREDBYTANGLEACCELERATOR9999999999999999999999999999999999999999999999999999999\",\"value\":0,\"obsolete_tag\":\"WFHDVAZAZAXABBYAXAUACBXA999\",\"timestamp\":1553843096373,\"current_index\":0,\"last_index\":0,\"bundle_hash\":\"UZFIYFWXNRBKTQFCZHKPURNHFKGTQQVEQLHKQJ9YQLYCI9SUSEUKKXGOXJHTOLCBS9DYBYCDBL9ZJF9OY\",\"trunk_transaction_hash\":\"XXSIKKKQGIYQJBYRWBFFQAFTARSDABYE9XIXQLPCMEIBVYTOGXDHUE9ECKCVREVLFPJLXDNDQPHDZ9999\",\"branch_transaction_hash\":\"LULPQYHFEFWAFPQQDHYWTJJIVXKZDCYKAWNTOBQYYSSIDMZNMSCOTTRLSRQIIP99HL9UVHCGGLGI99999\",\"tag\":\"HDHDVAZAZAXABBYAXAUACBXA999\",\"attachment_timestamp\":1553843097040,\"attachment_timestamp_lower_bound\":0,\"attachment_timestamp_upper_bound\":3812798742493,\"nonce\":\"9UB9999999USWB9999999999999\"},{\"hash\":\"THLEGYZVTDDLBLH9JVLDPSF9TQHL9MQLANAXVKKPLWPLNQNKDHKIGNAJICVS9WZUDZPWH9QWJMHAZ9999\",\"signature_and_message_fragment\":\"ADUA99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\",\"address\":\"POWEREDBYTANGLEACCELERATOR9999999999999999999999999999999999999999999999999999999\",\"value\":0,\"obsolete_tag\":\"LEHDVAZAZAXABBYAXAUACBXA999\",\"timestamp\":1553843094504,\"current_index\":0,\"last_index\":0,\"bundle_hash\":\"T9EHHEGWLKOTLSJTWZLTGHCXZURXMGSIXZHGFDCANYJVNR9NLVIGOJHUWNXLPIBPJGJVJSXGUBKAE9KJW\",\"trunk_transaction_hash\":\"FFAAXBVHVSAOR9IVNFCELDPNYGNUTWYZDGEKHQCDSF9KPDVODTG9ZSVGAJTCIQHRAQPNBXSBLCTNA9999\",\"branch_transaction_hash\":\"RWBIFEKECESALAKBCIIXNMOJMCEGLUNCVSHPSTTNXEJOXIKRZVHMHEXBPAQYA9SOIU9CLKJFQNSDA9999\",\"tag\":\"HDHDVAZAZAXABBYAXAUACBXA999\",\"attachment_timestamp\":1553843095202,\"attachment_timestamp_lower_bound\":0,\"attachment_timestamp_upper_bound\":3812798742493,\"nonce\":\"9LA9999999FHA99999999999999\"},{\"hash\":\"PMJJWAFRHWBMKJHUTPFEGOUHYFN9QLVCHXXOLZHVQGBWXV9FIYCFSNTWBHKPJILT99GWSOKKODDIA9999\",\"signature_and_message_fragment\":\"ADVA99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\",\"address\":\"POWEREDBYTANGLEACCELERATOR9999999999999999999999999999999999999999999999999999999\",\"value\":0,\"obsolete_tag\":\"MFHDVAZAZAXABBYAXAUACBXA999\",\"timestamp\":1553843095397,\"current_index\":0,\"last_index\":0,\"bundle_hash\":\"JHFEBRZCAJIJHOVTFBLFNEIGOTGDCIYSKRFCGAQASIYBKPXEKXIEBHECUBA9DHLXPEG9QGOLGLXLRADOW\",\"trunk_transaction_hash\":\"RV99FXOPUAKAKENHRCTHNUPJKDPXVQNWTLOYSZGZYVMTFUKAOBLUUSN9QHEXBWQI99CFZJB9GJTTZ9999\",\"branch_transaction_hash\":\"MIPDWYVALDIERVACKRDSEQLASDPLFMGUZONHFJKH9GODIZTXSSRKZZXVYTNAPAFZCBQKWAGNQADOA9999\",\"tag\":\"HDHDVAZAZAXABBYAXAUACBXA999\",\"attachment_timestamp\":1553843096080,\"attachment_timestamp_lower_bound\":0,\"attachment_timestamp_upper_bound\":3812798742493,\"nonce\":\"9GA9999999UBD99999999999999\"}]}"
          },
          result: {
            status: 200,
            info: [
              {
                message: "m2",
                tag: "tt1553843093",
                node_id: "VCMPD9GQUDCNBYSSPGZHEHUNSDVYTNVIAU9WCRYRMZIHAZHPEOTIOCBSKDIRCA9EW9TAULIKGXMT99999",
                created_at: 1553843097040
              },
              {
                message: "m0",
                tag: "tt1553843093",
                node_id: "THLEGYZVTDDLBLH9JVLDPSF9TQHL9MQLANAXVKKPLWPLNQNKDHKIGNAJICVS9WZUDZPWH9QWJMHAZ9999",
                created_at: 1553843095202
              },
              {
                message: "m1",
                tag: "tt1553843093",
                node_id: "PMJJWAFRHWBMKJHUTPFEGOUHYFN9QLVCHXXOLZHVQGBWXV9FIYCFSNTWBHKPJILT99GWSOKKODDIA9999",
                created_at: 1553843096080
              }
            ]
          }
        }
      end
    end
  end
end