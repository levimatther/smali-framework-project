.class public Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;
.super Landroid/os/AsyncTask;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteCallsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callIds:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V
    .locals 3

    .line 1183
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1184
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "DeleteCallsTask: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$1000(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 1188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    .line 1189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_0
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1193
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->callIds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1179
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1198
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v0, "doInBackground: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->callIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1200
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1179
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 1206
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1208
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$1100(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: contact.getNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$1100(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$1000(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 1212
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "has_enriched_call_data"

    .line 1213
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
