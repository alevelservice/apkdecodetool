.class public La/g/a/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field a:La/g/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/g/a/g<",
            "La/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field b:La/g/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/g/a/g<",
            "La/g/a/i;",
            ">;"
        }
    .end annotation
.end field

.field c:[La/g/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/g/a/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, La/g/a/h;-><init>(I)V

    iput-object v0, p0, La/g/a/c;->a:La/g/a/g;

    .line 3
    new-instance v0, La/g/a/h;

    invoke-direct {v0, v1}, La/g/a/h;-><init>(I)V

    iput-object v0, p0, La/g/a/c;->b:La/g/a/g;

    const/16 v0, 0x20

    new-array v0, v0, [La/g/a/i;

    .line 4
    iput-object v0, p0, La/g/a/c;->c:[La/g/a/i;

    return-void
.end method
