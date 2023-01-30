.class Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;
.super Ljava/lang/Object;
.source "VoicemailChangePinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;->handleResult(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;

.field final synthetic val$activity:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;

    iput-object p2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;->val$activity:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;->val$activity:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->finish()V

    return-void
.end method
