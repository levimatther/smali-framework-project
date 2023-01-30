.class Lcom/android/dialer/app/list/AllContactsFragment$2;
.super Lcom/android/contacts/common/list/DefaultContactListAdapter;
.source "AllContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/AllContactsFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/AllContactsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/AllContactsFragment;Landroid/content/Context;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment$2;->this$0:Lcom/android/dialer/app/list/AllContactsFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 137
    invoke-virtual {p0, p2, p3}, Lcom/android/dialer/app/list/AllContactsFragment$2;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
