.class Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/Integer;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    iput-object p2, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$id:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$countryIso:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$id:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->val$countryIso:Ljava/lang/String;

    .line 68
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f090073

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    .line 70
    invoke-virtual {p1}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    new-instance v6, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1$1;-><init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;)V

    .line 64
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    return-void
.end method
