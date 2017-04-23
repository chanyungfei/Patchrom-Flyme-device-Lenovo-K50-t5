.class final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayModeRecord"
.end annotation


# instance fields
.field public final mMode:Landroid/view/Display$Mode;

.field public final mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field public mPhysIndex:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 3
    .param p1, "phys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "physIndex"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-static {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 454
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 455
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    .line 452
    return-void
.end method
