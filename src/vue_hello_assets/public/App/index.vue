<template>
    <div>
        <div>
            hello (vue & dfinity) to da moon!!!!
        </div>
        <div>
            <p>
                canister response : {{ helloResp || "Loading..." }}
            </p>
            <p>
                canister response : {{ helloRespNow || "Loading..." }}
            </p>
        </div>
    </div>
</template>

<script>
import canister from "ic:canisters/vue_hello";

export default {
    data() {
        return {
            helloResp: null,
            helloRespNow: null,
        }
    },
    async mounted() {
        this.helloResp = await canister.greet("im api service");
        this.helloRespNow = await canister.greetNow("im api service:::" + new Date().getTime());
    }
}
</script>