.class Lk/b/a/h$a;
.super Ljava/lang/Object;
.source "LocalTime.java"

# interfaces
.implements Lk/b/a/x/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/b/a/x/k<",
        "Lk/b/a/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk/b/a/x/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/h$a;->a(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/x/e;)Lk/b/a/h;
    .locals 0

    .line 2
    invoke-static {p1}, Lk/b/a/h;->from(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method
