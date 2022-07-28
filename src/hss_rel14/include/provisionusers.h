#include <aws/core/Aws.h>
#include <string>


class ProvisionUsers {
    public:
        static bool addUsers();
    private:
        static bool addUser(Aws::String imsi, Aws::String msisdn,  Aws::String mmehost,
            Aws::String mmeid, Aws::String access_restriction, Aws::String key,
            Aws::String mmerealm, Aws::String rand, Aws::String sqn, Aws::String opc,
            Aws::String subscription_data);
};