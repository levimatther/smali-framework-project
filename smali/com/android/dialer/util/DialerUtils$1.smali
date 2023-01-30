.class final Lcom/android/dialer/util/DialerUtils$1;
.super Ljava/lang/Object;
.source "DialerUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/util/DialerUtils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/dialer/util/DialerUtils$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/dialer/util/DialerUtils;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
