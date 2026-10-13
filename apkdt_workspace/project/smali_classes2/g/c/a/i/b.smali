.class public final Lg/c/a/i/b;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/i/b$b;,
        Lg/c/a/i/b$h;,
        Lg/c/a/i/b$f;,
        Lg/c/a/i/b$c;,
        Lg/c/a/i/b$e;,
        Lg/c/a/i/b$d;,
        Lg/c/a/i/b$a;,
        Lg/c/a/i/b$g;
    }
.end annotation


# static fields
.field static final a:Lg/c/a/b/g;
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/c/a/i/b$h;

    invoke-direct {v0}, Lg/c/a/i/b$h;-><init>()V

    invoke-static {v0}, Lg/c/a/h/a;->e(Lg/c/a/e/h;)Lg/c/a/b/g;

    .line 2
    new-instance v0, Lg/c/a/i/b$b;

    invoke-direct {v0}, Lg/c/a/i/b$b;-><init>()V

    invoke-static {v0}, Lg/c/a/h/a;->b(Lg/c/a/e/h;)Lg/c/a/b/g;

    .line 3
    new-instance v0, Lg/c/a/i/b$c;

    invoke-direct {v0}, Lg/c/a/i/b$c;-><init>()V

    invoke-static {v0}, Lg/c/a/h/a;->c(Lg/c/a/e/h;)Lg/c/a/b/g;

    move-result-object v0

    sput-object v0, Lg/c/a/i/b;->a:Lg/c/a/b/g;

    .line 4
    invoke-static {}, Lg/c/a/f/g/m;->b()Lg/c/a/f/g/m;

    .line 5
    new-instance v0, Lg/c/a/i/b$f;

    invoke-direct {v0}, Lg/c/a/i/b$f;-><init>()V

    invoke-static {v0}, Lg/c/a/h/a;->d(Lg/c/a/e/h;)Lg/c/a/b/g;

    return-void
.end method

.method public static a()Lg/c/a/b/g;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lg/c/a/i/b;->a:Lg/c/a/b/g;

    invoke-static {v0}, Lg/c/a/h/a;->a(Lg/c/a/b/g;)Lg/c/a/b/g;

    move-result-object v0

    return-object v0
.end method
