.class final Lg/c/a/f/g/m$c$a;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/g/m$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final e:Lg/c/a/f/g/m$b;

.field final synthetic f:Lg/c/a/f/g/m$c;


# direct methods
.method constructor <init>(Lg/c/a/f/g/m$c;Lg/c/a/f/g/m$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/c/a/f/g/m$c$a;->f:Lg/c/a/f/g/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lg/c/a/f/g/m$c$a;->e:Lg/c/a/f/g/m$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/a/f/g/m$c$a;->e:Lg/c/a/f/g/m$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/c/a/f/g/m$b;->h:Z

    .line 2
    iget-object v1, p0, Lg/c/a/f/g/m$c$a;->f:Lg/c/a/f/g/m$c;

    iget-object v1, v1, Lg/c/a/f/g/m$c;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
