.class public Lf/a/a/a/b;
.super Ljava/lang/Object;
.source "ContactsServicePlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lio/flutter/embedding/engine/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/b$a;
    }
.end annotation


# static fields
.field private static f:Lg/a/c/a/k;


# instance fields
.field private e:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "mimetype"

    const-string v4, "data2"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lf/a/a/a/b;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/a/b;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 7
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "contact_id"

    const-string v0, "display_name"

    const-string v2, "data1"

    const-string v3, "mimetype"

    const-string v4, "data2"

    .line 8
    filled-new-array {p1, v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v0, p0, Lf/a/a/a/b;->e:Landroid/content/ContentResolver;

    const-string v3, "has_phone_number = \'1\'"

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lf/a/a/a/a;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "contact_id"

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    new-instance v2, Lf/a/a/a/a;

    invoke-direct {v2, v1}, Lf/a/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    const-string v2, "mimetype"

    .line 17
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name"

    .line 18
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lf/a/a/a/a;->b:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data1"

    .line 20
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data2"

    .line 21
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    iget-object v1, v1, Lf/a/a/a/a;->c:Ljava/util/ArrayList;

    new-instance v4, Lf/a/a/a/c;

    invoke-static {v3}, Lf/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lf/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method static synthetic a(Lf/a/a/a/b;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf/a/a/a/b;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/a/b;->e:Landroid/content/ContentResolver;

    .line 4
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "flutter_contacts"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Lf/a/a/a/b;->f:Lg/a/c/a/k;

    .line 5
    sget-object p1, Lf/a/a/a/b;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 6
    new-instance v0, Lf/a/a/a/b$a;

    invoke-direct {v0, p0, p2}, Lf/a/a/a/b$a;-><init>(Lf/a/a/a/b;Lg/a/c/a/k$d;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lf/a/a/a/b;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    sget-object p1, Lf/a/a/a/b;->f:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    sput-object v0, Lf/a/a/a/b;->f:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const-string v1, "getContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lf/a/a/a/b;->a(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    :goto_0
    return-void
.end method
