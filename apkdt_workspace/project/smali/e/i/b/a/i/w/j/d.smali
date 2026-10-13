.class abstract Le/i/b/a/i/w/j/d;
.super Ljava/lang/Object;
.source "EventStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/w/j/d$a;
    }
.end annotation


# static fields
.field static final a:Le/i/b/a/i/w/j/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Le/i/b/a/i/w/j/d;->f()Le/i/b/a/i/w/j/d$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    .line 2
    invoke-virtual {v0, v1, v2}, Le/i/b/a/i/w/j/d$a;->b(J)Le/i/b/a/i/w/j/d$a;

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1}, Le/i/b/a/i/w/j/d$a;->b(I)Le/i/b/a/i/w/j/d$a;

    const/16 v1, 0x2710

    .line 4
    invoke-virtual {v0, v1}, Le/i/b/a/i/w/j/d$a;->a(I)Le/i/b/a/i/w/j/d$a;

    const-wide/32 v1, 0x240c8400

    .line 5
    invoke-virtual {v0, v1, v2}, Le/i/b/a/i/w/j/d$a;->a(J)Le/i/b/a/i/w/j/d$a;

    const v1, 0x14000

    .line 6
    invoke-virtual {v0, v1}, Le/i/b/a/i/w/j/d$a;->c(I)Le/i/b/a/i/w/j/d$a;

    .line 7
    invoke-virtual {v0}, Le/i/b/a/i/w/j/d$a;->a()Le/i/b/a/i/w/j/d;

    move-result-object v0

    sput-object v0, Le/i/b/a/i/w/j/d;->a:Le/i/b/a/i/w/j/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static f()Le/i/b/a/i/w/j/d$a;
    .locals 1

    .line 1
    new-instance v0, Le/i/b/a/i/w/j/a$b;

    invoke-direct {v0}, Le/i/b/a/i/w/j/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()J
.end method

.method abstract c()I
.end method

.method abstract d()I
.end method

.method abstract e()J
.end method
