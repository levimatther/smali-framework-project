.class public Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;
.super Ljava/lang/Object;
.source "DialerPhoneNumberUtil.java"


# instance fields
.field private final phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 43
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p1, p0, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private isNumberMatch(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 1

    .line 103
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 104
    iget-object v0, p0, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 105
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {p1}, Lcom/android/dialer/phonenumberproto/Converter;->protoToPojo(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 106
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {p2}, Lcom/android/dialer/phonenumberproto/Converter;->protoToPojo(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p2

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isExactMatch(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber;)Z
    .locals 1

    .line 82
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 83
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object p2

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->isNumberMatch(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p1

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 2

    .line 53
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 55
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber;->newBuilder()Lcom/android/dialer/DialerPhoneNumber$Builder;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->newBuilder()Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {v1, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    :cond_0
    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {v1, p2}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->setCountryIso(Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerPhoneNumber$Builder;->setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)Lcom/android/dialer/DialerPhoneNumber$Builder;

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 68
    invoke-virtual {v1, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/phonenumberproto/Converter;->pojoToProto(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$Builder;->setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "DialerPhoneNumberUtil.parse"

    const-string v1, "couldn\'t parse phone number"

    .line 70
    invoke-static {p1, v1, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber;

    return-object p1
.end method
