.class Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

.field final synthetic val$activity:Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    iput-object p2, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;->val$activity:Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    .line 244
    invoke-virtual {v1}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;->val$activity:Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->finish()V

    return-void
.end method
