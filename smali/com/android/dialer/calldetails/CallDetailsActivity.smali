.class public Lcom/android/dialer/calldetails/CallDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CallDetailsActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;
    }
.end annotation


# static fields
.field private static final CONTACT_PHOTO_BROADCAST:Ljava/lang/String; = "com.android.dialer.calldetails.photo"

.field private static final EXTRA_CALL_DETAILS_ENTRIES:Ljava/lang/String; = "call_details_entries"

.field private static final EXTRA_CAN_REPORT_CALLER_ID:Ljava/lang/String; = "can_report_caller_id"

.field private static final EXTRA_CONTACT:Ljava/lang/String; = "contact"

.field private static final EXTRA_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final EXTRA_HAS_ENRICHED_CALL_DATA:Ljava/lang/String; = "has_enriched_call_data"

.field private static final EXTRA_NAME_VIEW:Ljava/lang/String; = "name_view"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final REQUEST_CODE_NAME:I = 0x2710

.field private static final TASK_DELETE:Ljava/lang/String; = "task_delete"

.field private static final menu_add_to_exsit_contact:I = 0x2

.field private static final menu_recentCalls_removeFromRecentList:I = 0x4

.field private static final menu_save_as_new_contact:I = 0x1

.field private static final menu_send_to_message:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field private contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

.field private mTitleText:Landroid/widget/TextView;

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private menu_unknown:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private menu_without_contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private rttCallDialog:Lcom/android/incallui/RttCallDialog;

.field private verstat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "CallDetailsActivity"

    .line 95
    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_without_contacts:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_unknown:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->verstat:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_without_contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/calldetails/CallDetailsActivity;)Landroid/widget/MenuBar;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/incallui/RttCallDialog;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->entries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/dialer/calldetails/CallDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->entries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/dialer/calldetails/CallDetailsActivity;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsActivity;->updateEntryList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isLaunchIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/dialer/calldetails/CallDetailsActivity;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Landroid/content/Intent;
    .locals 2

    .line 137
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "contact"

    .line 140
    invoke-static {v0, p0, p2}, Lcom/android/dialer/protos/ProtoParsers;->put(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)V

    const-string p0, "call_details_entries"

    .line 141
    invoke-static {v0, p0, p1}, Lcom/android/dialer/protos/ProtoParsers;->put(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)V

    const-string p0, "can_report_caller_id"

    .line 142
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x80000

    .line 143
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 411
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onHandleIntent: ======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    const-string v1, "contact"

    invoke-static {p1, v1, v0}, Lcom/android/dialer/protos/ProtoParsers;->getTrusted(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 415
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getDefaultInstance()Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object v0

    const-string v1, "call_details_entries"

    .line 414
    invoke-static {p1, v1, v0}, Lcom/android/dialer/protos/ProtoParsers;->getTrusted(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 416
    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->entries:Ljava/util/List;

    const p1, 0x7f090260

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    .line 420
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 421
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    new-instance v6, Lcom/android/dialer/calldetails/CallDetailsAdapter;

    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    iget-object v3, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->entries:Ljava/util/List;

    iget v4, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->verstat:I

    move-object v0, v6

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calldetails/CallDetailsAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;Ljava/util/List;ILcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;)V

    invoke-virtual {p1, v6}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 422
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->logOnScrollStateChange(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 426
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: ======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    const v0, 0x7f110005

    const/4 v1, 0x2

    const v2, 0x7f11000c

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: contact.hasContactUri() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v4, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 432
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 433
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 432
    invoke-static {p0, p1, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_unknown:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v3, v2, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 438
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 439
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 438
    invoke-static {p0, p1, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate: -------- "

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v4, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_without_contacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 445
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 446
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 445
    invoke-static {p0, p1, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :goto_0
    return-void
.end method

.method private updateEntryList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation

    .line 557
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    move-result-object v0

    .line 558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 559
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    .line 560
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canReportCallerId(Ljava/lang/String;)Z
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "can_report_caller_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 467
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClickCSK()Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCSK: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickLSK: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 150
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 156
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v0, 0xe

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c003f

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->setContentView(I)V

    const p1, 0x7f0902ff

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mTitleText:Landroid/widget/TextView;

    .line 164
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mTitleText:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110418

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1103dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_without_contacts:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->menu_unknown:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 185
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "verstat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->verstat:I

    .line 200
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->onHandleIntent(Landroid/content/Intent;)V

    .line 202
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.dialer.calldetails.photo"

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsActivity$1;-><init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mRecyclerView:Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsActivity$2;-><init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 488
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 489
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1}, Landroid/widget/MenuBar;->refreshMenuBar()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-eq v1, p1, :cond_0

    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    const/16 v1, 0x17

    if-ne v1, p1, :cond_3

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onKeyDown:keycode_call "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    new-instance v1, Lcom/android/dialer/calldetails/CallDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/calldetails/CallDetailsActivity$3;-><init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V

    .line 283
    new-instance v2, Lcom/android/incallui/RttCallDialog;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 286
    invoke-virtual {v2, p0}, Lcom/android/incallui/RttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v1}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v3, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 291
    invoke-virtual {v3}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v2}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    .line 289
    invoke-static {v1, v2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    .line 297
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 298
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string p2, "onKeyDown: KEYCODE_SOFT_LEFT"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->finish()V

    .line 301
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getShowTabIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return v0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 403
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "verstat"

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->verstat:I

    .line 407
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionMenuClick(I)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onOptionMenuClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 372
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;-><init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    const-string v2, "task_delete"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onOptionMenuDismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 385
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 386
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 323
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    return-void
.end method

.method public reportCallId(Ljava/lang/String;)V
    .locals 2

    .line 472
    invoke-static {p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/dialer/calldetails/ReportDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public scroolChange(Landroidx/recyclerview/widget/RecyclerView;ZZ)V
    .locals 5

    .line 572
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 573
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 574
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 575
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_2

    if-eqz p3, :cond_2

    .line 578
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 580
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 582
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_2
    :goto_0
    add-int/lit8 p3, v2, 0x1

    if-ne p3, v4, :cond_5

    if-eqz p2, :cond_5

    .line 588
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 590
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 591
    :cond_3
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 592
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 594
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_5
    :goto_1
    return-void
.end method
