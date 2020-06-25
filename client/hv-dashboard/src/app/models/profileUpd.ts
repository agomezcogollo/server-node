export class ProfilesUpd {
    constructor(
        public id_profile: number,
        public name_profile: string,
        public profession_profile: string,
        public phone_profile: number,
        public address_profile: string,
        public mail_profile: string,
        public hangouts_google_profile: string,
        public about_me_profile: string,
        public age_profile: string,
    ){}
}