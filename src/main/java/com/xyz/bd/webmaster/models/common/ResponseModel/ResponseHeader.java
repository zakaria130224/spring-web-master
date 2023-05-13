package com.xyz.bd.webmaster.models.common.ResponseModel;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ResponseHeader {
    @JsonProperty("ResultCode")
    long ResultCode;

    @JsonProperty("ResultDesc")
    String ResultDesc;

    public ResponseHeader(long resultCode, String resultDesc) {
        ResultCode = resultCode;
        ResultDesc = resultDesc;
    }
}
