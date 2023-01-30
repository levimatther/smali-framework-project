.class final Lcom/android/dialer/app/calllog/CallLogReceiver$1;
.super Ljava/lang/Object;
.source "CallLogReceiver.java"

# interfaces
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogReceiver;->checkVoicemailStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogReceiver$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Notification:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    invoke-static {v0, p1, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler;->maybeFixVoicemailStatus(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;)V

    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
