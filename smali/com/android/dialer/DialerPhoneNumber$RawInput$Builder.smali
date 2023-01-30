.class public final Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialerPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerPhoneNumber$RawInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialerPhoneNumber$RawInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/DialerPhoneNumber$RawInput;",
        "Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;",
        ">;",
        "Lcom/android/dialer/DialerPhoneNumber$RawInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 386
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$000()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/DialerPhoneNumber$1;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCountryIso()Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$500(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-object p0
.end method

.method public clearNumber()Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$200(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-object p0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryIsoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getCountryIsoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCountryIso()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasCountryIso()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public setCountryIso(Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$400(Lcom/android/dialer/DialerPhoneNumber$RawInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCountryIsoBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$600(Lcom/android/dialer/DialerPhoneNumber$RawInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$100(Lcom/android/dialer/DialerPhoneNumber$RawInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->access$300(Lcom/android/dialer/DialerPhoneNumber$RawInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
