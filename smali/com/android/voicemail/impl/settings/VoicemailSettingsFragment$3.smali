.class Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;
.super Ljava/lang/Object;
.source "VoicemailSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;Landroid/app/TctDialog;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    iput-object p2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 284
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    return-void
.end method
