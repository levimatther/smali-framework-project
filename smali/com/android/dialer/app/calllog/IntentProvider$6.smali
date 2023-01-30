.class final Lcom/android/dialer/app/calllog/IntentProvider$6;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Lcom/android/dialer/app/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

.field final synthetic val$canReportCallerId:Z

.field final synthetic val$contact:Lcom/android/dialer/dialercontact/DialerContact;


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$contact:Lcom/android/dialer/dialercontact/DialerContact;

    iput-boolean p3, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$canReportCallerId:Z

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$contact:Lcom/android/dialer/dialercontact/DialerContact;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/IntentProvider$6;->val$canReportCallerId:Z

    invoke-static {p1, v0, v1, v2}, Lcom/android/dialer/calldetails/CallDetailsActivity;->newInstance(Landroid/content/Context;Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
