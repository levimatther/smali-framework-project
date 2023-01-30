.class public final synthetic Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/tct/common/DialerDialogActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$0:Lcom/android/tct/common/DialerDialogActivity;

    iput-object p2, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$2:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$0:Lcom/android/tct/common/DialerDialogActivity;

    iget-object v1, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;->f$2:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tct/common/DialerDialogActivity;->lambda$showRttMerge$1$DialerDialogActivity(Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V

    return-void
.end method
