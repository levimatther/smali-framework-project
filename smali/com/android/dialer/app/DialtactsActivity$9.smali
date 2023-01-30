.class Lcom/android/dialer/app/DialtactsActivity$9;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/DialtactsActivity;->onAttachFragment(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;

.field final synthetic val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/list/SearchFragment;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$9;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    iput-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$9;->val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity$9;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/app/DialtactsActivity;->access$1700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/p13n/logging/P13nLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity$9;->val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;

    .line 726
    invoke-virtual {v1}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity$9;->val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;

    .line 727
    invoke-virtual {v2}, Lcom/android/dialer/app/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 725
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/p13n/logging/P13nLogger;->onSearchQuery(Ljava/lang/String;Lcom/android/contacts/common/list/PhoneNumberListAdapter;)V

    return-void
.end method
