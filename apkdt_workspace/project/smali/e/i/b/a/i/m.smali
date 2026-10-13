.class public abstract Le/i/b/a/i/m;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Le/i/b/a/i/m$a;
    .locals 2

    .line 1
    new-instance v0, Le/i/b/a/i/c$b;

    invoke-direct {v0}, Le/i/b/a/i/c$b;-><init>()V

    sget-object v1, Le/i/b/a/d;->DEFAULT:Le/i/b/a/d;

    invoke-virtual {v0, v1}, Le/i/b/a/i/c$b;->a(Le/i/b/a/d;)Le/i/b/a/i/m$a;

    return-object v0
.end method


# virtual methods
.method public a(Le/i/b/a/d;)Le/i/b/a/i/m;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/i/b/a/i/m;->d()Le/i/b/a/i/m$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/i/b/a/i/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/a/i/m$a;->a(Ljava/lang/String;)Le/i/b/a/i/m$a;

    .line 3
    invoke-virtual {v0, p1}, Le/i/b/a/i/m$a;->a(Le/i/b/a/d;)Le/i/b/a/i/m$a;

    .line 4
    invoke-virtual {p0}, Le/i/b/a/i/m;->b()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/a/i/m$a;->a([B)Le/i/b/a/i/m$a;

    .line 5
    invoke-virtual {v0}, Le/i/b/a/i/m$a;->a()Le/i/b/a/i/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Le/i/b/a/d;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Le/i/b/a/i/m;->c()Le/i/b/a/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Le/i/b/a/i/m;->b()[B

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/i/b/a/i/m;->b()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const-string v1, "TransportContext(%s, %s, %s)"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
