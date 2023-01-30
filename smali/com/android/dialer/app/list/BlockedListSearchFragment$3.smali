.class Lcom/android/dialer/app/list/BlockedListSearchFragment$3;
.super Ljava/lang/Object;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/BlockedListSearchFragment;->blockNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    iput-object p2, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$countryIso:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 7

    if-nez p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$countryIso:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f090073

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    .line 178
    invoke-virtual {v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    move-object v0, p1

    .line 172
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 181
    iget-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    .line 182
    invoke-virtual {p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    .line 184
    invoke-virtual {v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1102c5

    iget-object v3, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    .line 183
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    .line 189
    invoke-virtual {p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    .line 191
    invoke-virtual {v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110062

    iget-object v3, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;->val$number:Ljava/lang/String;

    .line 190
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
