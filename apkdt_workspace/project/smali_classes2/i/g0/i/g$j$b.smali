.class Li/g0/i/g$j$b;
.super Li/g0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/g0/i/g$j;->a(ZLi/g0/i/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Li/g0/i/g$j;


# direct methods
.method varargs constructor <init>(Li/g0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/g0/i/g$j$b;->f:Li/g0/i/g$j;

    invoke-direct {p0, p2, p3}, Li/g0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/g0/i/g$j$b;->f:Li/g0/i/g$j;

    iget-object v0, v0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v1, v0, Li/g0/i/g;->f:Li/g0/i/g$h;

    invoke-virtual {v1, v0}, Li/g0/i/g$h;->a(Li/g0/i/g;)V

    return-void
.end method
