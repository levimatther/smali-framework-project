.class final Lcom/android/dialer/app/calllog/IntentProvider$7;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/app/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isNewContact:Z

.field final synthetic val$lookupUri:Landroid/net/Uri;

.field final synthetic val$name:Ljava/lang/CharSequence;

.field final synthetic val$number:Ljava/lang/CharSequence;

.field final synthetic val$numberType:I


# direct methods
.method constructor <init>(Landroid/net/Uri;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$lookupUri:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$isNewContact:Z

    iput-object p3, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$name:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$number:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$numberType:I

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 137
    iget-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$lookupUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 138
    invoke-static {p1}, Lcom/android/contacts/common/model/ContactLoader;->parseEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 145
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$isNewContact:Z

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v2

    const/16 v3, 0x23

    if-lt v2, v3, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    .line 162
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "data1"

    .line 163
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    .line 166
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "last_time_used"

    .line 176
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "times_used"

    .line 177
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "data"

    .line 180
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0

    .line 185
    :cond_5
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$isNewContact:Z

    if-eqz p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$name:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$number:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$numberType:I

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$name:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$number:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/dialer/app/calllog/IntentProvider$7;->val$numberType:I

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
