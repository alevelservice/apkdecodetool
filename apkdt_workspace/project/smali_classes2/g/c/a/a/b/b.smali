.class public final Lg/c/a/a/b/b;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/a/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Lg/c/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/a/b/a;->e:Lg/c/a/a/b/a;

    .line 2
    invoke-static {v0}, Lg/c/a/a/a/a;->b(Ljava/util/concurrent/Callable;)Lg/c/a/b/g;

    move-result-object v0

    sput-object v0, Lg/c/a/a/b/b;->a:Lg/c/a/b/g;

    return-void
.end method

.method static synthetic a()Lg/c/a/b/g;
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/a/b/b$a;->a:Lg/c/a/b/g;

    return-object v0
.end method

.method public static b()Lg/c/a/b/g;
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/a/b/b;->a:Lg/c/a/b/g;

    invoke-static {v0}, Lg/c/a/a/a/a;->a(Lg/c/a/b/g;)Lg/c/a/b/g;

    move-result-object v0

    return-object v0
.end method
