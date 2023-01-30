.class synthetic Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;
.super Ljava/lang/Object;
.source "Vvm3EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$voicemail$impl$OmtpEvents:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/android/voicemail/impl/OmtpEvents;->values()[Lcom/android/voicemail/impl/OmtpEvents;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    :try_start_0
    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_REQUEST_STATUS_SUCCESS:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING_SUBSEQUENT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_DEFAULT_PIN_REPLACED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_ALL_SOCKET_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_INVALID_HOST_NAME:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_ESTABLISH_SSL_SESSION:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IOE_ON_OPEN:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_RESOLVE_HOST_ON_NETWORK:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_BAD_IMAP_CREDENTIAL:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_USER:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_DEVICE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_INVALID_PASSWORD:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_MAILBOX_NOT_INITIALIZED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_ACTIVATED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_USER_IS_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_INITIAL_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_EXCEPTION:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_NEW_USER_SETUP_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_UNKNOWN:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method
