.class public final Lcom/android/dialer/DialerPhoneNumber$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialerPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerPhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialerPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/DialerPhoneNumber;",
        "Lcom/android/dialer/DialerPhoneNumber$Builder;",
        ">;",
        "Lcom/android/dialer/DialerPhoneNumberOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 968
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber;->access$800()Lcom/android/dialer/DialerPhoneNumber;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/DialerPhoneNumber$1;)V
    .locals 0

    .line 961
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDialerInternalPhoneNumber()Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerPhoneNumber;->access$1200(Lcom/android/dialer/DialerPhoneNumber;)V

    return-object p0
.end method

.method public clearRawInput()Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1115
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1116
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0}, Lcom/android/dialer/DialerPhoneNumber;->access$1600(Lcom/android/dialer/DialerPhoneNumber;)V

    return-object p0
.end method

.method public getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    return-object v0
.end method

.method public hasDialerInternalPhoneNumber()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasRawInput()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->hasRawInput()Z

    move-result v0

    return v0
.end method

.method public mergeDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$1100(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public mergeRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1105
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$1500(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-object p0
.end method

.method public setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber$Builder;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1019
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1020
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$1000(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber$Builder;)V

    return-object p0
.end method

.method public setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1006
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$900(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-object p0
.end method

.method public setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1092
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1093
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$1400(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;)V

    return-object p0
.end method

.method public setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$Builder;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p1}, Lcom/android/dialer/DialerPhoneNumber;->access$1300(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-object p0
.end method
