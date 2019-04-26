unit Controler.Basic;

interface

uses
  Vcl.ExtCtrls, Model.Board, View.Board, View.SortResults,
  Model.SortResults, System.Diagnostics, System.Classes, Controler.Thread;

type
  TControlerBasicSort = class(TComponent)
  private
  protected
    FPaintBox: TPaintBox;
    FStopwatch: TStopwatch;
    FBoard: TBoard;
    FBoardView: IBoardView;
    FSResult: TSortResults;
    FSResultView: ISortResultsView;
    FSwapCounter: Integer;
    FSWatch: TStopwatch;
    FControlerThread: TControlerThread;
    procedure WaitMilisecond(ATimeMs: Double);
  public
    constructor CreateAndInit(AOwner: TComponent; APaintBox: TPaintBox); virtual;
    destructor Destroy; override;

    procedure DoSort; virtual; abstract;
  end;

implementation

uses
  Winapi.Windows;

{ TControlerBasicSort }

constructor TControlerBasicSort.CreateAndInit(AOwner: TComponent; APaintBox: TPaintBox);
begin
  inherited Create(AOwner);
  FPaintBox := APaintBox;
  FBoard := TBoard.Create;
  FBoardView := TBoardView.CreateAndInit(FPaintBox, FBoard);
  FSResult := TSortResults.Create;
  FSResultView := TSortResultsView.CreateAndInit(FPaintBox, FSResult);
end;

destructor TControlerBasicSort.Destroy;
begin
  FBoard.Free;
  FSResult.Free;
  if FControlerThread.IsRunning then
    FControlerThread.Terminate;
  inherited;
end;

procedure TControlerBasicSort.WaitMilisecond(ATimeMs: Double);
var
  startTime64, endTime64, frequency64: Int64;
begin
  QueryPerformanceFrequency(frequency64);
  QueryPerformanceCounter(startTime64);
  QueryPerformanceCounter(endTime64);
  while ((endTime64 - startTime64) / frequency64 * 1000 < ATimeMs) do
    QueryPerformanceCounter(endTime64);
end;

end.
