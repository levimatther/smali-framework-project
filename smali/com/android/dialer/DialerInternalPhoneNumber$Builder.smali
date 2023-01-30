.class public final Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialerInternalPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerInternalPhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialerInternalPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/DialerInternalPhoneNumber;",
        "Lcom/android/dialer/DialerInternalPhoneNumber$Builder;",
        ">;",
        "Lcom/android/dialer/DialerInternalPhoneNumberOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1005
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$000()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/DialerInternalPhoneNumber$1;)V
    .locals 0

    .line 998
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCountryCode()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$200(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1523
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1524
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1600(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearExtension()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1239
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1240
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$600(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearItalianLeadingZero()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1360
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1361
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$900(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearNationalNumber()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$400(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearNumberOfLeadingZeros()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1391
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1392
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1100(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearPreferredDomesticCarrierCode()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1618
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1619
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1800(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public clearRawInput()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1461
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1462
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1300(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getCountryCode()I

    move-result v0

    return v0
.end method

.method public getCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtensionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getItalianLeadingZero()Z
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getItalianLeadingZero()Z

    move-result v0

    return v0
.end method

.method public getNationalNumber()J
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getNationalNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfLeadingZeros()I
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    return v0
.end method

.method public getPreferredDomesticCarrierCode()Ljava/lang/String;
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredDomesticCarrierCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRawInput()Ljava/lang/String;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInputBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method public hasCountryCodeSource()Z
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    return v0
.end method

.method public hasExtension()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasExtension()Z

    move-result v0

    return v0
.end method

.method public hasItalianLeadingZero()Z
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasItalianLeadingZero()Z

    move-result v0

    return v0
.end method

.method public hasNationalNumber()Z
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNationalNumber()Z

    move-result v0

    return v0
.end method

.method public hasNumberOfLeadingZeros()Z
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v0

    return v0
.end method

.method public hasPreferredDomesticCarrierCode()Z
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    return v0
.end method

.method public hasRawInput()Z
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasRawInput()Z

    move-result v0

    return v0
.end method

.method public setCountryCode(I)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$100(Lcom/android/dialer/DialerInternalPhoneNumber;I)V

    return-object p0
.end method

.method public setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1511
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1500(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)V

    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1222
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1223
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$500(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExtensionBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1258
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$700(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setItalianLeadingZero(Z)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1334
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1335
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$800(Lcom/android/dialer/DialerInternalPhoneNumber;Z)V

    return-object p0
.end method

.method public setNationalNumber(J)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$300(Lcom/android/dialer/DialerInternalPhoneNumber;J)V

    return-object p0
.end method

.method public setNumberOfLeadingZeros(I)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1383
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1384
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1000(Lcom/android/dialer/DialerInternalPhoneNumber;I)V

    return-object p0
.end method

.method public setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1600
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1700(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPreferredDomesticCarrierCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1638
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1639
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1900(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRawInput(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1200(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRawInputBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 1476
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->copyOnWrite()V

    .line 1477
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->access$1400(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
