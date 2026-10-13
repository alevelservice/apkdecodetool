.class Lf/a/a/a/b$a;
.super Landroid/os/AsyncTask;
.source "ContactsServicePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lg/a/c/a/k$d;

.field final synthetic b:Lf/a/a/a/b;


# direct methods
.method public constructor <init>(Lf/a/a/a/b;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/b$a;->b:Lf/a/a/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lf/a/a/a/b$a;->a:Lg/a/c/a/k$d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/b$a;->b:Lf/a/a/a/b;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lf/a/a/a/b;->a(Lf/a/a/a/b;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {v0, p1}, Lf/a/a/a/b;->a(Lf/a/a/a/b;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    .line 4
    invoke-virtual {v1}, Lf/a/a/a/a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lf/a/a/a/b$a;->a:Lg/a/c/a/k$d;

    invoke-interface {v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/a/b$a;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lf/a/a/a/b$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method
