.class public final enum Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;
.super Ljava/lang/Enum;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum DELETE_CALL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum DELETE_VOICEMAIL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum GET_CALL_DETAILS:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum MARK_CALL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum UPDATE_DURATION:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 248
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "DELETE_VOICEMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 249
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "DELETE_CALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_CALL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 250
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "MARK_VOICEMAIL_READ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 251
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "MARK_CALL_READ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 252
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "GET_CALL_DETAILS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->GET_CALL_DETAILS:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 253
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string v1, "UPDATE_DURATION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->UPDATE_DURATION:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 247
    sget-object v8, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_CALL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->GET_CALL_DETAILS:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;
    .locals 1

    .line 247
    const-class v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;
    .locals 1

    .line 247
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    invoke-virtual {v0}, [Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    return-object v0
.end method
