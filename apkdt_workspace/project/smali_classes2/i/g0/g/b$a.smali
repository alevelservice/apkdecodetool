.class final Li/g0/g/b$a;
.super Lj/h;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/g0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field f:J


# direct methods
.method constructor <init>(Lj/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj/h;-><init>(Lj/t;)V

    return-void
.end method


# virtual methods
.method public a(Lj/c;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj/h;->a(Lj/c;J)V

    .line 2
    iget-wide v0, p0, Li/g0/g/b$a;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Li/g0/g/b$a;->f:J

    return-void
.end method
