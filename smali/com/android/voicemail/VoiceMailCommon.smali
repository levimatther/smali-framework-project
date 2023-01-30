.class public Lcom/android/voicemail/VoiceMailCommon;
.super Ljava/lang/Object;
.source "VoiceMailCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;
    }
.end annotation


# static fields
.field public static final ACTIVE_KEY:Ljava/lang/String; = "active_key"

.field public static final ACTIVE_RESULT:Ljava/lang/String; = "com.android.voicemail.active_result"

.field public static final EXITE_APP:Ljava/lang/String; = "exit_app"

.field public static final NEW_GREETING:Ljava/lang/String; = "new_greeting"

.field public static final NEW_PIN_KEY:Ljava/lang/String; = "new_pin"

.field public static final RENAME_KEY:Ljava/lang/String; = "rename"

.field public static final RENAME_RESULT_CODE:I = 0x12

.field public static final STOP_ACTIVATION:Ljava/lang/String; = "stop_activation"

.field public static VOICE_MAIL_QUEUE:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public static final VVMMAIN_RESULT_CODE:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/voicemail/VoiceMailCommon;->VOICE_MAIL_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
