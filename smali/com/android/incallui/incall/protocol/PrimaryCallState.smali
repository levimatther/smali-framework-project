.class public Lcom/android/incallui/incall/protocol/PrimaryCallState;
.super Ljava/lang/Object;
.source "PrimaryCallState.java"


# instance fields
.field public final callSubject:Ljava/lang/String;

.field public final callbackNumber:Ljava/lang/String;

.field public final connectTimeMillis:J

.field public final connectionIcon:Landroid/graphics/drawable/Drawable;

.field public final connectionLabel:Ljava/lang/String;

.field public final disconnectCause:Landroid/telecom/DisconnectCause;

.field public final gatewayNumber:Ljava/lang/String;

.field public final isBusinessNumber:Z

.field public final isConference:Z

.field public final isForwardedNumber:Z

.field public final isHdAttempting:Z

.field public final isHdAudioCall:Z

.field public final isRemotelyHeld:Z

.field public final isRtt:Z

.field public final isRttRequest:Z

.field public final isVideoCall:Z

.field public final isVoiceMailNumber:Z

.field public final isWifi:Z

.field public final isWorkCall:Z

.field public final sessionModificationState:I

.field public final shouldShowContactPhoto:Z

.field public final state:I

.field public final supportsCallOnHold:Z


# direct methods
.method public constructor <init>(IZILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZJZZZZ)V
    .locals 3

    move-object v0, p0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 109
    iput v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    move v1, p2

    .line 110
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVideoCall:Z

    move v1, p3

    .line 111
    iput v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    move-object v1, p4

    .line 112
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->disconnectCause:Landroid/telecom/DisconnectCause;

    move-object v1, p5

    .line 113
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    move-object v1, p6

    .line 114
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p7

    .line 115
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->gatewayNumber:Ljava/lang/String;

    move-object v1, p8

    .line 116
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callSubject:Ljava/lang/String;

    move-object v1, p9

    .line 117
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callbackNumber:Ljava/lang/String;

    move v1, p10

    .line 118
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    move v1, p11

    .line 120
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRtt:Z

    move v1, p12

    .line 121
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRttRequest:Z

    move/from16 v1, p13

    .line 123
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isConference:Z

    move/from16 v1, p14

    .line 124
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWorkCall:Z

    move/from16 v1, p15

    .line 125
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isHdAttempting:Z

    move/from16 v1, p16

    .line 126
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isHdAudioCall:Z

    move/from16 v1, p17

    .line 127
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isForwardedNumber:Z

    move/from16 v1, p18

    .line 128
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->shouldShowContactPhoto:Z

    move-wide/from16 v1, p19

    .line 129
    iput-wide v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    move/from16 v1, p21

    .line 130
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVoiceMailNumber:Z

    move/from16 v1, p22

    .line 131
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    move/from16 v1, p23

    .line 132
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isBusinessNumber:Z

    move/from16 v1, p24

    .line 133
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->supportsCallOnHold:Z

    return-void
.end method

.method public static createEmptyPrimaryCallState()Lcom/android/incallui/incall/protocol/PrimaryCallState;
    .locals 26

    .line 55
    new-instance v25, Lcom/android/incallui/incall/protocol/PrimaryCallState;

    move-object/from16 v0, v25

    new-instance v1, Landroid/telecom/DisconnectCause;

    move-object v4, v1

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-direct/range {v0 .. v24}, Lcom/android/incallui/incall/protocol/PrimaryCallState;-><init>(IZILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZJZZZZ)V

    return-object v25
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 138
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "PrimaryCallState, state: %d, connectionLabel: %s"

    .line 138
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
