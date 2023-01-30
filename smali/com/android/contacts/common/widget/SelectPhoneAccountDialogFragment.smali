.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_HANDLES:Ljava/lang/String; = "account_handles"

.field private static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final ARG_CAN_SET_DEFAULT:Ljava/lang/String; = "can_set_default"

.field private static final ARG_IS_DEFAULT_CHECKED:Ljava/lang/String; = "is_default_checked"

.field private static final ARG_LISTENER:Ljava/lang/String; = "listener"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultChecked:Z

.field private mIsSelected:Z

.field private mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getCallId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object p0
.end method

.method private getCallId()Ljava/lang/String;
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "call_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    new-instance p2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;-><init>()V

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title_res_id"

    .line 106
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "can_set_default"

    .line 107
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "account_handles"

    .line 108
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "listener"

    .line 109
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "call_id"

    .line 110
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p2, p3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    return-object p2
.end method

.method public static newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    const v0, 0x7f110424

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "can_set_default"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_handles"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "listener"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    iput-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz p1, :cond_0

    const-string v2, "is_default_checked"

    .line 133
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    :cond_0
    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    .line 137
    new-instance p1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 154
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 162
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v4, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    .line 165
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00fa

    iget-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 169
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v4, p1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090116

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-boolean v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    const-string v1, "is_default_checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getCallId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_call_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 198
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-void
.end method
