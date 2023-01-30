.class public final synthetic Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/tct/common/DialerDialogActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/content/SharedPreferences$Editor;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$0:Lcom/android/tct/common/DialerDialogActivity;

    iput-object p2, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$2:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$0:Lcom/android/tct/common/DialerDialogActivity;

    iget-object v1, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$2:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tct/common/DialerDialogActivity;->lambda$showRttMerge$0$DialerDialogActivity(Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
